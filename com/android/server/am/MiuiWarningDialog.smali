.class public Lcom/android/server/am/MiuiWarningDialog;
.super Lcom/android/server/am/BaseErrorDialog;
.source "MiuiWarningDialog.java"


# static fields
.field private static final BUTTON_CANCEL:I = 0x2

.field private static final BUTTON_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MiuiWarningDialog"


# instance fields
.field private mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/server/am/MiuiWarnings$WarningCallback;)V
    .registers 10
    .param p1, "packageLabel"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callback"    # Lcom/android/server/am/MiuiWarnings$WarningCallback;

    .line 24
    invoke-direct {p0, p2}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/server/am/MiuiWarningDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/MiuiWarningDialog$1;-><init>(Lcom/android/server/am/MiuiWarningDialog;)V

    iput-object v0, p0, Lcom/android/server/am/MiuiWarningDialog;->mHandler:Landroid/os/Handler;

    .line 25
    iput-object p3, p0, Lcom/android/server/am/MiuiWarningDialog;->mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;

    .line 26
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 27
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 29
    .local v1, "bidi":Landroid/text/BidiFormatter;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/MiuiWarningDialog;->setCancelable(Z)V

    .line 30
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 31
    invoke-virtual {v1, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 30
    const v2, 0x110b010b

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/MiuiWarningDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 32
    nop

    .line 33
    const v2, 0x110b0109

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/MiuiWarningDialog;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 32
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/MiuiWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 35
    nop

    .line 36
    const v2, 0x110b010a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/MiuiWarningDialog;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 35
    const/4 v4, -0x2

    invoke-virtual {p0, v4, v2, v3}, Lcom/android/server/am/MiuiWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/am/MiuiWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7da

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 40
    invoke-virtual {p0}, Lcom/android/server/am/MiuiWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 41
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiuiWarning:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    const/16 v3, 0x110

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 44
    invoke-virtual {p0}, Lcom/android/server/am/MiuiWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/MiuiWarningDialog;)Lcom/android/server/am/MiuiWarnings$WarningCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MiuiWarningDialog;

    .line 13
    iget-object v0, p0, Lcom/android/server/am/MiuiWarningDialog;->mCallback:Lcom/android/server/am/MiuiWarnings$WarningCallback;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Lcom/android/server/am/BaseErrorDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Lcom/miui/internal/R$id;->alertTitle:I

    invoke-virtual {p0, v0}, Lcom/android/server/am/MiuiWarningDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    .local v0, "titleView":Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 52
    return-void
.end method
