.class Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;
.super Ljava/lang/Object;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceStats"
.end annotation


# instance fields
.field accept:I

.field acquire:I

.field lockout:I

.field permanentLockout:I

.field reject:I

.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2

    .line 111
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/fingerprint/FingerprintService$1;

    .line 111
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$PerformanceStats;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method
