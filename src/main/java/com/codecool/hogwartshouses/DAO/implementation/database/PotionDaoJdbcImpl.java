package com.codecool.hogwartshouses.DAO.implementation.database;

import com.codecool.hogwartshouses.DAO.PotionDAO;
import com.codecool.hogwartshouses.DAO.mapper.IngredientMapper;
import com.codecool.hogwartshouses.DAO.mapper.RecipeMapper;
import com.codecool.hogwartshouses.model.Recipe;
import com.codecool.hogwartshouses.model.enums.Ingredient;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class PotionDaoJdbcImpl implements PotionDAO {
    private final JdbcTemplate template;
    private final RecipeMapper recipeMapper;
    private final IngredientMapper ingredientMapper;

    public PotionDaoJdbcImpl(JdbcTemplate template, RecipeMapper recipeMapper, IngredientMapper ingredientMapper) {
        this.template = template;
        this.recipeMapper = recipeMapper;
        this.ingredientMapper = ingredientMapper;
    }

    @Override
    public List<Recipe> getAllRecipes() {
        final String sql = "SELECT id, name FROM recipe;";
        List<Recipe> recipes = template.query(sql, recipeMapper);
        recipes.forEach(r -> r.setIngredients(getIngredientsFromDB(r)));
        return recipes;
    }

    private List<Ingredient> getIngredientsFromDB(Recipe recipe) {
        final String sql = "SELECT ingredient FROM ingredients WHERE recipe_id = ?;";
        return template.query(sql, ingredientMapper, recipe.getId());
    }
}
