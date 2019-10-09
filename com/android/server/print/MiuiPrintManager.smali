.class public Lcom/android/server/print/MiuiPrintManager;
.super Ljava/lang/Object;
.source "MiuiPrintManager.java"


# static fields
.field public static final MIUI_ACTION_PRINT_DIALOG:Ljava/lang/String; = "miui.print.PRINT_DIALOG"

.field public static final MIUI_PREFIX:Ljava/lang/String; = "MIUI:"

.field public static final TAG:Ljava/lang/String; = "MiuiPrintManager"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureInjected(Landroid/print/PrintJobInfo;)Z
    .registers 3
    .param p0, "info"    # Landroid/print/PrintJobInfo;

    .line 31
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "jobName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "MIUI:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 34
    const-string v1, "MIUI:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 35
    const/4 v1, 0x1

    return v1

    .line 37
    :cond_21
    const/4 v1, 0x0

    return v1
.end method

.method public static printInject(ZLandroid/content/Intent;)V
    .registers 4
    .param p0, "injected"    # Z
    .param p1, "intent"    # Landroid/content/Intent;

    .line 47
    if-eqz p0, :cond_10

    .line 51
    const-string/jumbo v0, "miui.print.PRINT_DIALOG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v0, "MiuiPrintManager"

    const-string/jumbo v1, "printInject....will handle for MIUI target."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_10
    return-void
.end method
