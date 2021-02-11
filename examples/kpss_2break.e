new;
cls;
library tspdlib;

// Load date file
y = loadd(__FILE_DIR $+ "ts_examples.csv", "Y + date($Date, '%b-%y')");

// Break in level
model = 1;
{ KPSS, tb1, tb2, cv } = KPSS_2breaks(y, model);

// Break in level and trend
model = 2;
{ KPSS, tb1, tb2, cv } = KPSS_2breaks(y, model);


