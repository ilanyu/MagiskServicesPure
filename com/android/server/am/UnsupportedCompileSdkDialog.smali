.class public Lcom/android/server/am/UnsupportedCompileSdkDialog;
.super Ljava/lang/Object;
.source "UnsupportedCompileSdkDialog.java"


# instance fields
.field private final mDialog:Landroid/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 13
    .param p1, "manager"    # Lcom/android/server/am/AppWarnings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    .line 39
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 40
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p3, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 41
    .local v1, "label":Ljava/lang/CharSequence;
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const v4, 0x10406c2

    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 47
    const v5, 0x109012d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 50
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v5}, Lcom/android/server/utils/AppInstallerUtil;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 51
    .local v5, "installerIntent":Landroid/content/Intent;
    if-eqz v5, :cond_47

    .line 52
    const v6, 0x10406c1

    new-instance v7, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$K7plB7GGwH9pXpEKQfCoIs-hrJg;

    invoke-direct {v7, p2, v5}, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$K7plB7GGwH9pXpEKQfCoIs-hrJg;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    :cond_47
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    .line 58
    iget-object v6, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->create()V

    .line 60
    iget-object v6, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 61
    .local v6, "window":Landroid/view/Window;
    const/16 v7, 0x7d2

    invoke-virtual {v6, v7}, Landroid/view/Window;->setType(I)V

    .line 64
    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    const-string v8, "UnsupportedCompileSdkDialog"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v7, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    const v8, 0x10201b5

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 67
    .local v7, "alwaysShow":Landroid/widget/CheckBox;
    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 68
    new-instance v2, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$F6Sx14AYFmP1rpv_SSjEio25FYc;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$UnsupportedCompileSdkDialog$F6Sx14AYFmP1rpv_SSjEio25FYc;-><init>(Lcom/android/server/am/UnsupportedCompileSdkDialog;Lcom/android/server/am/AppWarnings;)V

    invoke-virtual {v7, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installerIntent"    # Landroid/content/Intent;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 53
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/am/UnsupportedCompileSdkDialog;Lcom/android/server/am/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "manager"    # Lcom/android/server/am/AppWarnings;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 68
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    xor-int/lit8 v1, p3, 0x1

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isShowing()Z
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public show()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/android/server/am/UnsupportedCompileSdkDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 78
    return-void
.end method
