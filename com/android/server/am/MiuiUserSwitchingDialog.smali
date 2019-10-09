.class public Lcom/android/server/am/MiuiUserSwitchingDialog;
.super Lcom/android/server/am/BaseUserSwitchingDialog;
.source "MiuiUserSwitchingDialog.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .line 25
    const v0, 0x110e000c

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/internal/R$styleable;->AlertDialog:[I

    const/4 v3, 0x0

    const v4, 0x101005d

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 34
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/miui/internal/R$styleable;->AlertDialog_progressLayout:I

    sget v4, Lcom/miui/internal/R$layout;->progress_dialog:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 37
    .local v2, "view":Landroid/view/View;
    sget v3, Lmiui/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 38
    .local v3, "mMessageView":Landroid/widget/TextView;
    const v4, 0x102000d

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 39
    .local v4, "mProgress":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 40
    invoke-virtual {p0, v2}, Lcom/android/server/am/MiuiUserSwitchingDialog;->setView(Landroid/view/View;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x110b00d2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-super {p0, p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

.method public bridge synthetic show()V
    .registers 1

    .line 22
    invoke-super {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->show()V

    return-void
.end method
