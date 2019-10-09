.class Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HiddenApiSettings"
.end annotation


# instance fields
.field private mBlacklistDisabled:Z

.field private final mContext:Landroid/content/Context;

.field private mExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExemptionsStr:Ljava/lang/String;

.field private mLogSampleRate:I

.field private mPolicyP:I

.field private mPolicyPreP:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "context"    # Landroid/content/Context;

    .line 3034
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3028
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 3029
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 3030
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicyPreP:I

    .line 3031
    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicyP:I

    .line 3035
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 3036
    return-void
.end method

.method private getValidEnforcementPolicy(Ljava/lang/String;)I
    .registers 5
    .param p1, "settingsKey"    # Ljava/lang/String;

    .line 3092
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3094
    .local v0, "policy":I
    invoke-static {v0}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3095
    return v0

    .line 3097
    :cond_12
    return v1
.end method

.method private update()V
    .registers 5

    .line 3059
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_blacklist_exemptions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3061
    .local v0, "exemptions":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 3062
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    .line 3063
    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3064
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 3065
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    goto :goto_42

    .line 3067
    :cond_28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 3068
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3069
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_40

    .line 3070
    :cond_36
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_40
    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 3072
    :goto_42
    sget-object v1, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    invoke-virtual {v1, v2}, Landroid/os/ZygoteProcess;->setApiBlacklistExemptions(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 3073
    const-string v1, "ActivityManager"

    const-string v2, "Failed to set API blacklist exemptions!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 3078
    :cond_59
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hidden_api_access_log_sampling_rate"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 3080
    .local v1, "logSampleRate":I
    if-ltz v1, :cond_6c

    const/high16 v2, 0x10000

    if-le v1, v2, :cond_6d

    .line 3081
    :cond_6c
    const/4 v1, -0x1

    .line 3083
    :cond_6d
    if-eq v1, v3, :cond_7c

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    if-eq v1, v2, :cond_7c

    .line 3084
    iput v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 3085
    sget-object v2, Landroid/os/Process;->zygoteProcess:Landroid/os/ZygoteProcess;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    invoke-virtual {v2, v3}, Landroid/os/ZygoteProcess;->setHiddenApiAccessLogSampleRate(I)V

    .line 3087
    :cond_7c
    const-string v2, "hidden_api_policy_pre_p_apps"

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getValidEnforcementPolicy(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicyPreP:I

    .line 3088
    const-string v2, "hidden_api_policy_p_apps"

    invoke-direct {p0, v2}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getValidEnforcementPolicy(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicyP:I

    .line 3089
    return-void
.end method


# virtual methods
.method getPolicyForPApps()I
    .registers 2

    .line 3110
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicyP:I

    return v0
.end method

.method getPolicyForPrePApps()I
    .registers 2

    .line 3106
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicyPreP:I

    return v0
.end method

.method isDisabled()Z
    .registers 2

    .line 3102
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    return v0
.end method

.method public onChange(Z)V
    .registers 2
    .param p1, "selfChange"    # Z

    .line 3114
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    .line 3115
    return-void
.end method

.method public registerObserver()V
    .registers 4

    .line 3039
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_blacklist_exemptions"

    .line 3040
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3039
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3043
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_access_log_sampling_rate"

    .line 3044
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3043
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3047
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_policy_pre_p_apps"

    .line 3048
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3047
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3051
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_policy_p_apps"

    .line 3052
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3051
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 3055
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    .line 3056
    return-void
.end method
