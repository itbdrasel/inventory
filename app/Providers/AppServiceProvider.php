<?php

namespace App\Providers;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;
use Illuminate\Database\Eloquent\Builder;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Paginator::useBootstrap();
	  //application settings assign to configuration.
	  config()->set('settings', \App\Models\Settings::pluck('s_value', 's_name')->all());

	  //merge(['price'=>'100']) // to add more item to settings

	  //app settings assign to views as global
      view()->share(config('settings'));

	  //more global vars for views
	  view()->share([
			'version'		=> 'Version 1.0',
		]);




        Builder::macro('whereLike', function(string $attribute, string $searchTerm) {
            return $this->orWhere($attribute, 'LIKE', "%{$searchTerm}%");
        });


        Builder::macro('joinLeft', function(string $foreignTable, string $table, string $foreignKey) {
            return $this->leftJoin($foreignTable, $table.'.'.$foreignKey,'=',$foreignTable.'.'.$foreignKey);
        });
        Builder::macro('orderByFilter', function(string $model) {
            return $this->orderBy(getOrder($model::$sortable)['by'], getOrder($model::$sortable)['order']);
        });

    }
}
