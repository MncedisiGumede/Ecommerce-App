module.exports = {
  root: true,
  env: {
    es6: true,
    node: true,
  },
  parserOptions: {
    project: "project_deapsea2/tsconfig.json",
    tsconfigRootDir: __dirname,
    sourceType: "module",
  },
  extends: [
    "eslint:recommended",
    "google",
    "@typescript-eslint/parser",
  ],
  rules: {
    quotes: ["error", "double"],
  },
};
