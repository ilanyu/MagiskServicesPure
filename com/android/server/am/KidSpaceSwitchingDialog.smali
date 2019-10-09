.class public Lcom/android/server/am/KidSpaceSwitchingDialog;
.super Lcom/android/server/am/BaseUserSwitchingDialog;
.source "KidSpaceSwitchingDialog.java"


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;I)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "userId"    # I

    .line 28
    const v0, 0x110e000a

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/am/BaseUserSwitchingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;II)V

    .line 29
    return-void
.end method

.method private getKidSwitchDialogImageId()I
    .registers 3

    .line 55
    iget v0, p0, Lcom/android/server/am/KidSpaceSwitchingDialog;->mUserId:I

    .line 56
    .local v0, "tartgetUserId":I
    const/4 v1, -0x1

    .line 57
    .local v1, "resourceId":I
    if-nez v0, :cond_9

    .line 58
    const v1, 0x1102003c

    goto :goto_c

    .line 60
    :cond_9
    const v1, 0x1102003b

    .line 62
    :goto_c
    return v1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Lcom/android/server/am/BaseUserSwitchingDialog;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/server/am/KidSpaceSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 35
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 36
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 37
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    const/4 v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 40
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 42
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xf06

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 48
    invoke-virtual {p0}, Lcom/android/server/am/KidSpaceSwitchingDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x11030015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "view":Landroid/view/View;
    const v3, 0x110d004f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 50
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0}, Lcom/android/server/am/KidSpaceSwitchingDialog;->getKidSwitchDialogImageId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 51
    invoke-virtual {p0, v2}, Lcom/android/server/am/KidSpaceSwitchingDialog;->setContentView(Landroid/view/View;)V

    .line 52
    return-void
.end method

.method public bridge synthetic show()V
    .registers 1

    .line 25
    invoke-super {p0}, Lcom/android/server/am/BaseUserSwitchingDialog;->show()V

    return-void
.end method
