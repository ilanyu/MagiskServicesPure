.class public final synthetic Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/display/BrightnessTracker;

.field private final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;->f$0:Lcom/android/server/display/BrightnessTracker;

    iput-object p2, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;->f$0:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$_S_g5htVKYYPRPZzYSZzGdy7hM0;->f$1:Ljava/io/PrintWriter;

    invoke-static {v0, v1}, Lcom/android/server/display/BrightnessTracker;->lambda$dump$1(Lcom/android/server/display/BrightnessTracker;Ljava/io/PrintWriter;)V

    return-void
.end method
