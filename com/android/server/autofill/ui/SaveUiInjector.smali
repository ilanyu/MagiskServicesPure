.class final Lcom/android/server/autofill/ui/SaveUiInjector;
.super Ljava/lang/Object;
.source "SaveUiInjector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# static fields
.field private static AUTOFILL_ACTIVITY:Ljava/lang/String; = null

.field private static AUTOFILL_PACKAGE:Ljava/lang/String; = null

.field private static MIUI_VERSION_NAME:Ljava/lang/String; = null

.field private static final SAVEUI_ACTION:Ljava/lang/String; = "intent.action.saveui"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    const-string v0, "com.miui.contentcatcher"

    sput-object v0, Lcom/android/server/autofill/ui/SaveUiInjector;->AUTOFILL_PACKAGE:Ljava/lang/String;

    .line 34
    const-string v0, "com.miui.contentcatcher.autofill.activitys.AutofillSettingActivity"

    sput-object v0, Lcom/android/server/autofill/ui/SaveUiInjector;->AUTOFILL_ACTIVITY:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "ro.miui.ui.version.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/ui/SaveUiInjector;->MIUI_VERSION_NAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/android/server/autofill/ui/SaveUiInjector;->AUTOFILL_PACKAGE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 32
    sget-object v0, Lcom/android/server/autofill/ui/SaveUiInjector;->AUTOFILL_ACTIVITY:Ljava/lang/String;

    return-object v0
.end method

.method public static changeBackground(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .registers 6
    .param p0, "decor"    # Landroid/view/View;
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 99
    if-eqz p0, :cond_70

    if-nez p1, :cond_5

    goto :goto_70

    .line 102
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    .line 103
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 102
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "autofillService":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 105
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 106
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, "com.miui.contentcatcher"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 107
    const v2, 0x11020199

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    sget-object v2, Lcom/android/server/autofill/ui/SaveUiInjector;->MIUI_VERSION_NAME:Ljava/lang/String;

    const-string v3, "V11"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 109
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit8 v2, v2, -0x28

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 110
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit8 v2, v2, -0x50

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 111
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x50

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 112
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/lit16 v2, v2, 0xa0

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_6f

    .line 114
    :cond_57
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/lit8 v2, v2, -0x3c

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 115
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/lit8 v2, v2, -0x3c

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 116
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/lit8 v2, v2, 0x78

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/lit8 v2, v2, 0x78

    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 121
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_6f
    :goto_6f
    return-void

    .line 100
    .end local v0    # "autofillService":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Lcom/android/server/autofill/ui/OverlayControl;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "overlayControl"    # Lcom/android/server/autofill/ui/OverlayControl;
    .param p2, "cancelListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "okListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 44
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x11030005

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 47
    .local v2, "view":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x110b0127

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "linkMessage":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const v7, 0x110b0126

    invoke-virtual {v4, v7, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 50
    .local v6, "start":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    .line 51
    .local v7, "end":I
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 53
    .local v8, "spannableString":Landroid/text/SpannableString;
    new-instance v9, Landroid/text/style/UnderlineSpan;

    invoke-direct {v9}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v10, 0x21

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 55
    new-instance v9, Lcom/android/server/autofill/ui/SaveUiInjector$1;

    invoke-direct {v9, v1}, Lcom/android/server/autofill/ui/SaveUiInjector$1;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v8, v9, v6, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x11070049

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 71
    .local v9, "color":I
    new-instance v11, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v11, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v8, v11, v6, v7, v10}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 72
    const v10, 0x110d001e

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 73
    .local v10, "messageView":Landroid/widget/TextView;
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 76
    new-instance v11, Lmiui/app/AlertDialog$Builder;

    sget v12, Lmiui/R$style;->Theme_DayNight_Dialog_Alert:I

    invoke-direct {v11, v0, v12}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 77
    invoke-virtual {v11, v2}, Lmiui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiui/app/AlertDialog$Builder;

    move-result-object v11

    .line 78
    const v12, 0x110b0123

    move-object/from16 v13, p3

    invoke-virtual {v11, v12, v13}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v11

    .line 79
    const/high16 v12, 0x1040000

    invoke-virtual {v11, v12, v1}, Lmiui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object v11

    .line 80
    invoke-virtual {v11}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v11

    .line 81
    .local v11, "dialog":Lmiui/app/AlertDialog;
    move-object/from16 v12, p4

    invoke-virtual {v11, v12}, Lmiui/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    invoke-virtual {v11}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 84
    .local v14, "window":Landroid/view/Window;
    const/16 v15, 0x7f6

    invoke-virtual {v14, v15}, Landroid/view/Window;->setType(I)V

    .line 85
    const v15, 0x60020

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 88
    const/16 v15, 0x10

    invoke-virtual {v14, v15}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 89
    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 90
    invoke-virtual {v14, v5}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 92
    invoke-virtual {v11}, Lmiui/app/AlertDialog;->show()V

    .line 93
    new-instance v5, Landroid/content/Intent;

    const-string v15, "intent.action.saveui"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/autofill/ui/OverlayControl;->hideOverlays()V

    .line 95
    return-object v11
.end method
