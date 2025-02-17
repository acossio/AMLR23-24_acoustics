%% 70 kHz school survey data


amlr03 = load('C:\Github\AMLR23-24_acoustics\data\AMLR03\70kHz\gridded_AMLR03_2023-24_70kHz_survey_5m.mat');

amlr04 = load('C:\Github\AMLR23-24_acoustics\data\AMLR04\70kHz\gridded_AMLR04_2023-24_70kHz_survey_5m.mat');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK CALCS AGAINST INTEGRATED PROFILES
%int_abc_03=nansum(amlr03.data.ABC,1);
%int_abc_04=nansum(amlr04.data.ABC,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
int_abc_03 = sum(amlr03.gridded_glider_abc_survey.ABC,"omitnan");
int_abc_04 = sum(amlr04.gridded_glider_abc_survey.ABC,"omitnan");

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 70 kHz for Bransfield
CF = UFF{3,4};

figure(1)
%subplot(2,1,1)
edges = [-9:0.5:-4];
histogram(log10(int_abc_03),edges,'Normalization','pdf','FaceColor','k', 'FaceAlpha',0.4)
hold on
%subplot(2,1,2)
histogram(log10(int_abc_04),edges,'Normalization','pdf','FaceColor','r', 'FaceAlpha',0.1) %, 'DisplayStyle','stairs')

legend('AMLR03','AMLR04')
xlabel ('Log10 ABC')
ylabel('70 kHz (PDF)')

figure(2)
%subplot(2,1,1)
edges = [-9:0.5:-4];
ecdf(log10(int_abc_03))%,edges,'Normalization','pdf','FaceColor','k', 'FaceAlpha',0.4)
hold on
%subplot(2,1,2)
ecdf(log10(int_abc_04))%,edges,'Normalization','pdf','FaceColor','r', 'FaceAlpha',0.1) %, 'DisplayStyle','stairs')
legend('AMLR03','AMLR04')

int_abc_03 = int_abc_03*CF; %convert ABC to g/m2
int_abc_04 = int_abc_04*CF;

[outdata_04]=BOOSTRP_SPATIAL_GLIDER_ESTIMATES(amlr04.gridded_glider_abc_survey.glider_latitude, amlr04.gridded_glider_abc_survey.glider_longitude, int_abc_04,1);
[outdata_03]=BOOSTRP_SPATIAL_GLIDER_ESTIMATES(amlr03.gridded_glider_abc_survey.glider_latitude, amlr03.gridded_glider_abc_survey.glider_longitude, int_abc_03,1);


m_03_b = bootstrp(1000,@mean,outdata_03(:,3)); % bootstrap
m_04_b = bootstrp(1000,@mean,outdata_04(:,3)); % bootstrap

m_03_bci = bootci(1000,@mean,outdata_03(:,3)); % bootstrap confidence intervals
m_04_bci = bootci(1000,@mean,outdata_04(:,3)); % bootstrap confidence intervals

mean03 = mean(m_03_b)
mean04 = mean(m_04_b)

%% 120 kHz school survey data
clear

amlr03 = load('C:\Github\AMLR23-24_acoustics\data\AMLR03\120kHz\gridded_AMLR03_2023-24_120kHz_survey_5m.mat');

amlr04 = load('C:\Github\AMLR23-24_acoustics\data\AMLR04\120kHz\gridded_AMLR04_2023-24_120kHz_survey_5m.mat');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CHECK CALCS AGAINST INTEGRATED PROFILES
%int_abc_03=nansum(amlr03.data.ABC,1);
%int_abc_04=nansum(amlr04.data.ABC,1);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
int_abc_03 = sum(amlr03.gridded_glider_abc_survey.ABC,"omitnan");
int_abc_04 = sum(amlr04.gridded_glider_abc_survey.ABC,"omitnan");

% load penguin conversion factors 
load('C:\Github\AMLR23-24_acoustics\data\CF_2023-24_penguin.mat')

% CF for the 120 kHz for Bransfield
CF = UFF{9,4};


figure(6)
%subplot(2,1,1)
edges = [-9:0.5:-4];
histogram(log10(int_abc_03),edges,'Normalization','pdf','FaceColor','k', 'FaceAlpha',0.4)
hold on
%subplot(2,1,2)
histogram(log10(int_abc_04),edges,'Normalization','pdf','FaceColor','r', 'FaceAlpha',0.1) %, 'DisplayStyle','stairs')
legend('AMLR03','AMLR04')
xlabel ('Log10 ABC')
ylabel('120 kHz (PDF)')

figure(7)
%subplot(2,1,1)
edges = [-9:0.5:-4];
ecdf(log10(int_abc_03))%,edges,'Normalization','pdf','FaceColor','k', 'FaceAlpha',0.4)
hold on
%subplot(2,1,2)
ecdf(log10(int_abc_04))%,edges,'Normalization','pdf','FaceColor','r', 'FaceAlpha',0.1) %, 'DisplayStyle','stairs')
legend('AMLR03','AMLR04')

int_abc_03 = int_abc_03*CF; %convert ABC to g/m2
int_abc_04 = int_abc_04*CF;

[outdata_04]=BOOSTRP_SPATIAL_GLIDER_ESTIMATES(amlr04.gridded_glider_abc_survey.glider_latitude, amlr04.gridded_glider_abc_survey.glider_longitude, int_abc_04,1);
[outdata_03]=BOOSTRP_SPATIAL_GLIDER_ESTIMATES(amlr03.gridded_glider_abc_survey.glider_latitude, amlr03.gridded_glider_abc_survey.glider_longitude, int_abc_03,1);


m_03_b = bootstrp(1000,@mean,outdata_03(:,3)); % bootstrap
m_04_b = bootstrp(1000,@mean,outdata_04(:,3)); % bootstrap

m_03_bci = bootci(1000,@mean,outdata_03(:,3)); % bootstrap confidence intervals
m_04_bci = bootci(1000,@mean,outdata_04(:,3)); % bootstrap confidence intervals

mean03 = mean(m_03_b)
mean04 = mean(m_04_b)
