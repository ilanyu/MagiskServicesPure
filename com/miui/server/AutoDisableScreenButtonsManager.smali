.class public Lcom/miui/server/AutoDisableScreenButtonsManager;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
    }
.end annotation


# static fields
.field private static final ENABLE_KEY_PRESS_INTERVAL:I = 0x7d0

.field private static final PREF_ADSB_NOT_SHOW_PROMPTS:Ljava/lang/String; = "ADSB_NOT_SHOW_PROMPTS"

.field private static final SettingsActionComponent:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "AutoDisableScreenButtonsManager"

.field private static final TMP_DISABLE_BUTTON:I = 0x2

.field private static sAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;


# instance fields
.field private mCloudConfig:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurUserId:I

.field private mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mScreenButtonPressedKeyCode:I

.field private mScreenButtonPressedTime:J

.field private mScreenButtonsDisabled:Z

.field private mScreenButtonsTmpDisabled:Z

.field private mStatusBarVisibleOld:Z

.field private mToastShowTime:J

.field private mTwice:Z

.field private mUserSetting:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    const-string v0, "com.android.settings/.AutoDisableScreenButtonsAppListSettingsActivity"

    .line 57
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/miui/server/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 46
    iput-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mTwice:Z

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mLock:Ljava/lang/Object;

    .line 66
    iput-object p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->resetButtonsStatus()V

    .line 68
    new-instance v0, Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;

    invoke-direct {v0, p0, p2}, Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;-><init>(Lcom/miui/server/AutoDisableScreenButtonsManager;Landroid/os/Handler;)V

    .line 69
    .local v0, "observer":Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;
    invoke-virtual {v0}, Lcom/miui/server/AutoDisableScreenButtonsManager$DisableButtonsSettingsObserver;->observe()V

    .line 70
    sput-object p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->sAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/AutoDisableScreenButtonsManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 35
    iget-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;
    .param p1, "x1"    # Z

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->saveTmpDisableButtonsStatus(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/server/AutoDisableScreenButtonsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 35
    invoke-direct {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/AutoDisableScreenButtonsManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 35
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 35
    invoke-static {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/AutoDisableScreenButtonsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 35
    invoke-direct {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->showFloat()V

    return-void
.end method

.method static synthetic access$602(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/server/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 35
    invoke-direct {p0, p1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/server/AutoDisableScreenButtonsManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 35
    invoke-direct {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/miui/server/AutoDisableScreenButtonsManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/miui/server/AutoDisableScreenButtonsManager;

    .line 35
    invoke-direct {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->showSettings()V

    return-void
.end method

.method private static getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .line 304
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 305
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 306
    return-object v1

    .line 308
    :cond_c
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 309
    .local v2, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_23

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 310
    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object v1

    .line 312
    :cond_23
    return-object v1
.end method

.method public static onStatusBarVisibilityChangeStatic(Z)V
    .registers 2
    .param p0, "visible"    # Z

    .line 103
    sget-object v0, Lcom/miui/server/AutoDisableScreenButtonsManager;->sAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    if-eqz v0, :cond_9

    .line 104
    sget-object v0, Lcom/miui/server/AutoDisableScreenButtonsManager;->sAutoDisableScreenButtonsManager:Lcom/miui/server/AutoDisableScreenButtonsManager;

    invoke-virtual {v0, p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V

    .line 106
    :cond_9
    return-void
.end method

.method private resetButtonsStatus()V
    .registers 2

    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->saveDisableButtonsStatus(Z)V

    .line 295
    iput-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    .line 296
    return-void
.end method

.method private saveDisableButtonsStatus(Z)V
    .registers 5
    .param p1, "disable"    # Z

    .line 279
    iput-boolean p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    .line 280
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_state"

    .line 281
    iget v2, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 280
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 282
    return-void
.end method

.method private saveTmpDisableButtonsStatus(Z)V
    .registers 6
    .param p1, "tmp"    # Z

    .line 285
    iput-boolean p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    .line 286
    iget-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    if-eqz v0, :cond_7

    .line 287
    return-void

    .line 289
    :cond_7
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_buttons_state"

    .line 290
    if-eqz p1, :cond_14

    const/4 v2, 0x2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    iget v3, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 289
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 291
    return-void
.end method

.method private showFloat()V
    .registers 3

    .line 212
    const-string v0, "AutoDisableScreenButtonsManager"

    const-string/jumbo v1, "showing auto disable screen buttons float window..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    if-nez v0, :cond_28

    .line 215
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->inflate(Landroid/content/Context;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    .line 217
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lcom/miui/server/AutoDisableScreenButtonsManager$3;

    invoke-direct {v1, p0}, Lcom/miui/server/AutoDisableScreenButtonsManager$3;-><init>(Lcom/miui/server/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    new-instance v1, Lcom/miui/server/AutoDisableScreenButtonsManager$4;

    invoke-direct {v1, p0}, Lcom/miui/server/AutoDisableScreenButtonsManager$4;-><init>(Lcom/miui/server/AutoDisableScreenButtonsManager;)V

    invoke-virtual {v0, v1}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 234
    :cond_28
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->show()V

    .line 235
    return-void
.end method

.method private showPromptsIfNeeds()Z
    .registers 8

    .line 240
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const-string v1, "ADSB_NOT_SHOW_PROMPTS"

    invoke-static {v0, v1}, Lmiui/util/AutoDisableScreenButtonsHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 241
    .local v0, "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    move v2, v1

    goto :goto_14

    :cond_d
    move-object v2, v0

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 242
    .local v2, "notShow":Z
    :goto_14
    if-eqz v2, :cond_17

    .line 243
    return v1

    .line 246
    :cond_17
    new-instance v1, Lmiui/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 247
    .local v1, "builder":Lmiui/app/AlertDialog$Builder;
    const v3, 0x110b00c5

    invoke-virtual {v1, v3}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x110b00c6

    .line 248
    invoke-virtual {v3, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v5, 0x110b00c8

    .line 250
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Lmiui/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v5}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x110b00c7

    new-instance v6, Lcom/miui/server/AutoDisableScreenButtonsManager$5;

    invoke-direct {v6, p0}, Lcom/miui/server/AutoDisableScreenButtonsManager$5;-><init>(Lcom/miui/server/AutoDisableScreenButtonsManager;)V

    .line 252
    invoke-virtual {v3, v4, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v3

    .line 260
    invoke-virtual {v3}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v3

    .line 261
    .local v3, "adlg":Lmiui/app/AlertDialog;
    invoke-virtual {v3}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v6, 0x7d3

    invoke-virtual {v4, v6}, Landroid/view/Window;->setType(I)V

    .line 262
    invoke-virtual {v3}, Lmiui/app/AlertDialog;->show()V

    .line 263
    return v5
.end method

.method private showSettings()V
    .registers 6

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/miui/server/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 269
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 272
    :try_start_11
    iget-object v1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_16
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_16} :catch_17

    .line 275
    goto :goto_31

    .line 273
    :catch_17
    move-exception v1

    .line 274
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AutoDisableScreenButtonsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "start activity exception, component = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/miui/server/AutoDisableScreenButtonsManager;->SettingsActionComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :goto_31
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "h"    # Landroid/os/Handler;

    .line 192
    if-eqz p2, :cond_b

    .line 193
    new-instance v0, Lcom/miui/server/AutoDisableScreenButtonsManager$2;

    invoke-direct {v0, p0, p1}, Lcom/miui/server/AutoDisableScreenButtonsManager$2;-><init>(Lcom/miui/server/AutoDisableScreenButtonsManager;Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_e

    .line 199
    :cond_b
    invoke-direct {p0, p1}, Lcom/miui/server/AutoDisableScreenButtonsManager;->showToastInner(Ljava/lang/CharSequence;)V

    .line 201
    :goto_e
    return-void
.end method

.method private showToast(ZLandroid/os/Handler;)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "h"    # Landroid/os/Handler;

    .line 187
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_8

    const v1, 0x110b00c2

    goto :goto_b

    .line 188
    :cond_8
    const v1, 0x110b00c3

    .line 187
    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/miui/server/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    .line 189
    return-void
.end method

.method private showToastInner(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 204
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 205
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x7d6

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 206
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 208
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 209
    return-void
.end method

.method private updateSettings()V
    .registers 7

    .line 340
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 341
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 342
    :try_start_9
    const-string/jumbo v2, "screen_buttons_state"

    iget v3, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCurUserId:I

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    .line 344
    .local v2, "btnState":I
    packed-switch v2, :pswitch_data_50

    goto :goto_1e

    .line 349
    :pswitch_17
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    goto :goto_1e

    .line 346
    :pswitch_1b
    iput-boolean v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    .line 347
    nop

    .line 353
    :goto_1e
    const-string v3, "auto_disable_screen_button"

    iget v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCurUserId:I

    invoke-static {v0, v3, v4}, Landroid/provider/MiuiSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "userSetting":Ljava/lang/String;
    if-eqz v3, :cond_35

    iget-object v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mUserSetting:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 356
    iput-object v3, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mUserSetting:Ljava/lang/String;

    .line 357
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateUserJson(Ljava/lang/String;)V

    .line 359
    :cond_35
    const-string v4, "auto_disable_screen_button_cloud_setting"

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 361
    .local v4, "cloudConfig":Ljava/lang/String;
    if-eqz v4, :cond_4a

    iget-object v5, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCloudConfig:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    .line 362
    iput-object v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCloudConfig:Ljava/lang/String;

    .line 363
    invoke-static {v4}, Lmiui/util/AutoDisableScreenButtonsHelper;->updateCloudJson(Ljava/lang/String;)V

    .line 365
    .end local v2    # "btnState":I
    .end local v3    # "userSetting":Ljava/lang/String;
    .end local v4    # "cloudConfig":Ljava/lang/String;
    :cond_4a
    monitor-exit v1

    .line 366
    return-void

    .line 365
    :catchall_4c
    move-exception v2

    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_9 .. :try_end_4e} :catchall_4c

    throw v2

    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_17
    .end packed-switch
.end method


# virtual methods
.method public handleDisableButtons(IZZZLandroid/view/KeyEvent;)Z
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "down"    # Z
    .param p3, "disableForSingleKey"    # Z
    .param p4, "disableForLidClose"    # Z
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "disable":Z
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    .line 119
    .local v1, "isVirtual":Z
    invoke-virtual {p5}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_15

    move v2, v4

    goto :goto_16

    :cond_15
    move v2, v3

    .line 121
    .local v2, "isVirtualHardKey":Z
    :goto_16
    iget-object v5, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lmiui/securityspace/CrossUserUtils;->getCurrentUserId()I

    move-result v6

    invoke-static {v5, p1, v6}, Lcom/miui/enterprise/RestrictionsHelper;->hasKeyCodeRestriction(Landroid/content/Context;II)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 122
    return v4

    .line 125
    :cond_23
    const/16 v4, 0x52

    if-eq p1, v4, :cond_33

    const/16 v4, 0x54

    if-eq p1, v4, :cond_4f

    const/16 v4, 0xbb

    if-eq p1, v4, :cond_33

    packed-switch p1, :pswitch_data_94

    .line 147
    return v3

    .line 129
    :cond_33
    :pswitch_33
    if-eqz p3, :cond_4f

    if-nez v1, :cond_4f

    .line 130
    const-string v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableForSingleKey keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x1

    .line 132
    goto :goto_91

    .line 136
    :cond_4f
    :pswitch_4f
    if-eqz v1, :cond_53

    if-eqz v2, :cond_91

    .line 137
    :cond_53
    if-eqz p4, :cond_73

    invoke-static {}, Lmiui/util/SmartCoverManager;->deviceDisableKeysWhenLidClose()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 138
    const-string v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableForLidClose keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v0, 0x1

    goto :goto_91

    .line 140
    :cond_73
    invoke-virtual {p0, p1, p2}, Lcom/miui/server/AutoDisableScreenButtonsManager;->screenButtonsInterceptKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 141
    const-string v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screenButtonsDisabled keyCode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v0, 0x1

    .line 149
    :cond_91
    :goto_91
    return v0

    nop

    nop

    :pswitch_data_94
    .packed-switch 0x3
        :pswitch_4f
        :pswitch_33
    .end packed-switch
.end method

.method public isScreenButtonsDisabled()Z
    .registers 2

    .line 183
    iget-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsDisabled:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public onStatusBarVisibilityChange(Z)V
    .registers 4
    .param p1, "visible"    # Z

    .line 74
    iget-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z

    if-eq p1, v0, :cond_e

    .line 75
    iget-object v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/AutoDisableScreenButtonsManager$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/AutoDisableScreenButtonsManager$1;-><init>(Lcom/miui/server/AutoDisableScreenButtonsManager;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    :cond_e
    return-void
.end method

.method public onUserSwitch(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 176
    iget v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCurUserId:I

    if-eq v0, p1, :cond_9

    .line 177
    iput p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mCurUserId:I

    .line 178
    invoke-direct {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->updateSettings()V

    .line 180
    :cond_9
    return-void
.end method

.method public resetTmpButtonsStatus()V
    .registers 2

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonsTmpDisabled:Z

    .line 300
    return-void
.end method

.method public screenButtonsInterceptKey(IZ)Z
    .registers 11
    .param p1, "keycode"    # I
    .param p2, "down"    # Z

    .line 153
    invoke-virtual {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->isScreenButtonsDisabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 154
    return v1

    .line 156
    :cond_8
    const/4 v0, 0x1

    if-eqz p2, :cond_45

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 158
    .local v2, "time":J
    iget-wide v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v4, v4, v6

    if-gez v4, :cond_27

    iget v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    if-ne v4, p1, :cond_27

    iget-boolean v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mTwice:Z

    if-eqz v4, :cond_27

    .line 160
    iput-boolean v1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mTwice:Z

    .line 161
    invoke-direct {p0}, Lcom/miui/server/AutoDisableScreenButtonsManager;->resetButtonsStatus()V

    .line 162
    return v1

    .line 164
    :cond_27
    iput-wide v2, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonPressedTime:J

    .line 165
    iput p1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mScreenButtonPressedKeyCode:I

    .line 166
    iput-boolean v0, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mTwice:Z

    .line 167
    iget-wide v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mToastShowTime:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_45

    .line 168
    iput-wide v2, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mToastShowTime:J

    .line 169
    iget-object v1, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;

    const v4, 0x110b00c4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/server/AutoDisableScreenButtonsManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v1, v4}, Lcom/miui/server/AutoDisableScreenButtonsManager;->showToast(Ljava/lang/CharSequence;Landroid/os/Handler;)V

    .line 172
    .end local v2    # "time":J
    :cond_45
    return v0
.end method
