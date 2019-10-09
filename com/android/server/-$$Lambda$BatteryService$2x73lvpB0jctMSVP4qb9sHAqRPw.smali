.class public final synthetic Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$BatteryService$2x73lvpB0jctMSVP4qb9sHAqRPw;->f$0:Landroid/content/Intent;

    invoke-static {v0}, Lcom/android/server/BatteryService;->lambda$sendBatteryChangedIntentLocked$0(Landroid/content/Intent;)V

    return-void
.end method
