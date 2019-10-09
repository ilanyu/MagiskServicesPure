.class Lcom/android/server/am/SecondSpaceSwitchingDialog;
.super Lcom/android/server/am/BaseUserSwitchingDialog;
.source "SecondSpaceSwitchingDialog.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .line 23
    const v0, 0x110e0009

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 27
    invoke-super {p0, p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 29
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 30
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 31
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 32
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 35
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xf06

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x1103002e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 42
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcom/android/server/am/SecondSpaceSwitchingDialog;->setContentView(Landroid/view/View;)V

    .line 43
    return-void
.end method
