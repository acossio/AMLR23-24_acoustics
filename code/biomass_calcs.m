
% AMLR03 70 kHz survey workup

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 70 kHz for Bransfield
CF = UFF{3,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR03\70kHz\gridded_AMLR03_2023-24_70kHz_survey_5m.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

%% AMLR03 120 kHz survey biomass

clear

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 120 kHz for Bransfield
CF = UFF{9,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR03\120kHz\gridded_AMLR03_2023-24_120kHz_survey_5m.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

%% AMLR04 70 kHz survey biomass

clear

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 70 kHz for Bransfield
CF = UFF{3,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR04\70kHz\gridded_AMLR04_2023-24_70kHz_survey_5m.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

%% AMLR04 120 kHz survey biomass
clear

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 120 kHz for Bransfield
CF = UFF{9,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR04\120kHz\gridded_AMLR04_2023-24_120kHz_survey_5m.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

%% AMLR03 70 kHz school survey biomass

clear

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 70 kHz for Bransfield
CF = UFF{3,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR03\70kHz\gridded_AMLR03_AMLR23-24_70kHz_5m_schools_survey.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

%% AMLR03 120 kHz school survey biomass

clear

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 120 kHz for Bransfield
CF = UFF{9,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR03\120kHz\gridded_AMLR03_AMLR23-24_120kHz_5m_schools_survey.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

%% AMLR04 70 kHz school survey biomass

clear

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 70 kHz for Bransfield
CF = UFF{3,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR04\70kHz\gridded_AMLR04_AMLR23-24_70kHz_5m_schools_survey.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

%% AMLR04 120 kHz school survey biomass

clear

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 120 kHz for Bransfield
CF = UFF{9,4};

% load gridded data
load('C:\Github\AMLR23-24_acoustics\data\AMLR04\120kHz\gridded_AMLR04_AMLR23-24_120kHz_5m_schools_survey.mat')

% remove_deep_data_spikes
clean = gridded_glider_abc_survey.ABC;
clean_idx = gridded_glider_abc_survey.ABC(50:end,:);
clean_idx(clean_idx>1.0e-07) = NaN;
clean(50:end,:) = clean_idx;

nasc_int = sum(clean,"omitnan");
gm2 = nasc_int*CF;
gm2_std = std(gm2) % standard deviation
gm2_ste = std(gm2)/sqrt(length(gm2)) % standard error
mean_gm2 = mean(gm2,"omitnan")

biomassBS = (mean_gm2*9.0e+9)/1.0e+6 %  area of Bransfield survey

