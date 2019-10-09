.class public final synthetic Lcom/android/server/lights/-$$Lambda$MiuiLightsService$3$H_v-eRBNnNVChQJXpmptH9EZ4Mk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/lights/MiuiLightsService$3;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService$3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$3$H_v-eRBNnNVChQJXpmptH9EZ4Mk;->f$0:Lcom/android/server/lights/MiuiLightsService$3;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$3$H_v-eRBNnNVChQJXpmptH9EZ4Mk;->f$0:Lcom/android/server/lights/MiuiLightsService$3;

    invoke-static {v0}, Lcom/android/server/lights/MiuiLightsService$3;->lambda$onFrequencyCapture$0(Lcom/android/server/lights/MiuiLightsService$3;)V

    return-void
.end method
