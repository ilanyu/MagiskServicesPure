.class public final synthetic Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$rNs5B1U3M8_obMr8Ws5cSODCFn8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$rNs5B1U3M8_obMr8Ws5cSODCFn8;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$rNs5B1U3M8_obMr8Ws5cSODCFn8;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$rNs5B1U3M8_obMr8Ws5cSODCFn8;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$DeprecatedTargetSdkVersionDialog$rNs5B1U3M8_obMr8Ws5cSODCFn8;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/am/DeprecatedTargetSdkVersionDialog;->lambda$new$1(Landroid/content/Context;Landroid/content/Intent;Landroid/content/DialogInterface;I)V

    return-void
.end method
