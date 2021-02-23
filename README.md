# Configure initial for projects with React, Typescript, ESLint

## Create React App with Typescript

`npx create-react-app my-app --template typescript`

## Install ESLint and Jest support

ESLint is installed with create-react-app

`yarn add -D @typescript-eslint/eslint-plugin @typescript-eslint/parser eslint-config-airbnb-typescript@6.3.2 eslint-plugin-jest eslint-plugin-import eslint-plugin-jsx-a11y eslint-plugin-react-hooks eslint-plugin-react`

## Install the packages for Airbnb config

`npx install-peerdeps --dev eslint-config-airbnb`

## Install Prettier

`yarn add -D prettier eslint-config-prettier eslint-plugin-prettier prettier-eslint prettier-eslint-cli`

## Create ESLint config file

In root of project create file **.eslintrc** and add the following rules (custom)

```json
{
  "parser": "@typescript-eslint/parser",
  "plugins": ["react", "@typescript-eslint", "jest"],
  "extends": [
    "airbnb-typescript",
    "airbnb/hooks",
    "plugin:@typescript-eslint/recommended",
    "plugin:jest/recommended",
    "prettier",
    "prettier/react",
    "prettier/@typescript-eslint",
    "plugin:prettier/recommended"
  ],
  "parserOptions": {
    "ecmaFeatures": {
      "jsx": true
    },
    "ecmaVersion": 2018,
    "sourceType": "module",
    "project": "./tsconfig.json"
  },
  "settings": {
    "import/resolver": {
      "node": {
        "extensions": [".js", ".jsx", ".ts", ".tsx"]
      }
    },
    "react": {
      "version": "detect"
    }
  },
  "env": {
    "es6": true,
    "browser": true,
    "node": true,
    "jest": true
  },
  "rules": {
    "react/prop-types": "off",
    "no-var": "error",
    "linebreak-style": "off",
    "prettier/prettier": [
      "error",
      {
        "endOfLine": "auto"
      }
    ],
    "no-plusplus": [
      "error",
      {
        "allowForLoopAfterthoughts": true
      }
    ],
    "@typescript-eslint/explicit-module-boundary-types": "off",
    "@typescript-eslint/no-use-before-define": [
      "error",
      {
        "functions": false,
        "classes": true,
        "variables": true,
        "typedefs": true
      }
    ],
    "class-methods-use-this": "off",
    "@typescript-eslint/explicit-function-return-type": 0,
    "indent": ["error", 2, { "SwitchCase": 1 }],
    "import/prefer-default-export": "off",
    "no-debugger": "warn",
    "@typescript-eslint/no-shadow": "off",
    "@typescript-eslint/lines-between-class-members": ["off"],
    "no-param-reassign": "off",
    "jsx-a11y/interactive-supports-focus": "off",
    "jsx-a11y/click-events-have-key-events": "off"
  }
}
```

## Create file ESLint ignore

Create **.eslintignore** file in the root of project with the following content:

```txt
build/*
node_modules/*
public/*
docs/*
templates/*
src/react-app-env.d.ts
src/serviceWorker.ts
```

## Environment variables

[Reference](https://www.freecodecamp.org/news/how-to-implement-runtime-environment-variables-with-create-react-app-docker-and-nginx-7f9d42a91d70/)
