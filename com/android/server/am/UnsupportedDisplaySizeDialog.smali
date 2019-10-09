.class public Lcom/android/server/am/UnsupportedDisplaySizeDialog;
.super Ljava/lang/Object;
.source "UnsupportedDisplaySizeDialog.java"


# instance fields
.field private final mDialog:Lmiui/app/AlertDialog;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppWarnings;Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)V
    .registers 11
    .param p1, "manager"    # Lcom/android/server/am/AppWarnings;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget-object v0, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

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

    const v4, 0x10406c4

    invoke-virtual {p2, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 44
    .local v3, "message":Ljava/lang/CharSequence;
    new-instance v4, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v4, p2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 46
    invoke-virtual {v4, v3}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 47
    const v5, 0x109012e

    invoke-virtual {v4, v5}, Lmiui/app/AlertDialog$Builder;->setView(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v4

    .line 48
    invoke-virtual {v4}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    .line 51
    iget-object v4, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->create()V

    .line 53
    iget-object v4, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v4}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 54
    .local v4, "window":Landroid/view/Window;
    const/16 v5, 0x7d2

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 57
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const-string v6, "UnsupportedDisplaySizeDialog"

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v5, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    const v6, 0x10201b5

    invoke-virtual {v5, v6}, Lmiui/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 60
    .local v5, "alwaysShow":Landroid/widget/CheckBox;
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    new-instance v2, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;

    invoke-direct {v2, p0, p1}, Lcom/android/server/am/-$$Lambda$UnsupportedDisplaySizeDialog$3f6hcHrxiaslh6X9tny1rOFVGnI;-><init>(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/AppWarnings;)V

    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 63
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/am/UnsupportedDisplaySizeDialog;Lcom/android/server/am/AppWarnings;Landroid/widget/CompoundButton;Z)V
    .registers 7
    .param p1, "manager"    # Lcom/android/server/am/AppWarnings;
    .param p2, "buttonView"    # Landroid/widget/CompoundButton;
    .param p3, "isChecked"    # Z

    .line 61
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    xor-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/am/AppWarnings;->setPackageFlag(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->dismiss()V

    .line 75
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public show()V
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/android/server/am/UnsupportedDisplaySizeDialog;->mDialog:Lmiui/app/AlertDialog;

    invoke-virtual {v0}, Lmiui/app/AlertDialog;->show()V

    .line 71
    return-void
.end method
