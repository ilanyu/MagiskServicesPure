.class public final synthetic Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/lights/MiuiLightsService$2;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/lights/MiuiLightsService$2;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;->f$0:Lcom/android/server/lights/MiuiLightsService$2;

    iput-object p2, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;->f$0:Lcom/android/server/lights/MiuiLightsService$2;

    iget-object v1, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/lights/-$$Lambda$MiuiLightsService$2$2gyf2fuBA6p1eQ8cHrt2_h6CHCA;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/lights/MiuiLightsService$2;->lambda$setColorfulLight$0(Lcom/android/server/lights/MiuiLightsService$2;Ljava/lang/String;I)V

    return-void
.end method
