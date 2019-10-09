.class public Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;
.super Ljava/lang/Object;
.source "DeprecatedTargetSdkVersionDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 12
    .param p1, "manager"    # Lcom/android/server/am/AppWarnings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    .line 47
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 49
    .local v1, "label":Ljava/lang/CharSequence;
    const v2, 0x10401d4

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "message":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$06pwP7nH4-Aq27SqBfqb-dAMhzc;

    invoke-direct {v4, p0, p1}, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$06pwP7nH4-Aq27SqBfqb-dAMhzc;-><init>(Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;Lcom/android/server/am/AppWarnings;)V

    .line 52
    const v5, 0x104000a

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 55
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 56
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 59
    .local v3, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v4, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v4}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 60
    .local v4, "installerIntent":Landroid/content/Intent;
    if-eqz v4, :cond_42

    .line 61
    const v5, 0x10401d3

    new-instance v6, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$rNs5B1U3M8_obMr8Ws5cSODCFn8;

    invoke-direct {v6, p2, v4}, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$rNs5B1U3M8_obMr8Ws5cSODCFn8;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 68
    :cond_42
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    .line 69
    iget-object v5, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->create()V

    .line 71
    iget-object v5, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 72
    .local v5, "window":Landroid/view/Window;
    const/16 v6, 0x7d2

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 75
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const-string v7, "DeprecatedTargetSdkVersionDialog"

    invoke-virtual {v6, v7}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;Lcom/android/server/am/AppWarnings;Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "manager"    # Lcom/android/server/am/AppWarnings;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 53
    iget-object v0, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/server/am/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installerIntent"    # Landroid/content/Intent;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 89
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .registers 4

    .line 83
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing SDK deprecation warning for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 85
    return-void
.end method
