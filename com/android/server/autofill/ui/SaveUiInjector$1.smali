.class Lcom/android/server/autofill/ui/SaveUiInjector$1;
.super Landroid/text/style/ClickableSpan;
.source "SaveUiInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/SaveUiInjector;->showDialog(Landroid/content/Context;Lcom/android/server/autofill/ui/OverlayControl;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/android/server/autofill/ui/SaveUiInjector$1;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "widget"    # Landroid/view/View;

    .line 58
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    # getter for: Lcom/android/server/autofill/ui/SaveUiInjector;->AUTOFILL_PACKAGE:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/autofill/ui/SaveUiInjector;->access$000()Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/autofill/ui/SaveUiInjector;->AUTOFILL_ACTIVITY:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/autofill/ui/SaveUiInjector;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    :try_start_16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    iget-object v1, p0, Lcom/android/server/autofill/ui/SaveUiInjector$1;->val$cancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_24} :catch_25

    .line 66
    goto :goto_3c

    .line 64
    :catch_25
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SaveUiInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method
