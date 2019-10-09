.class Lcom/android/server/fingerprint/FingerprintService$12$2;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$12;->onAcquired(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$12;

.field final synthetic val$acquiredInfo:I

.field final synthetic val$deviceId:J

.field final synthetic val$vendorCode:I


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$12;JII)V
    .registers 6
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$12;

    .line 1159
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$12;

    iput-wide p2, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->val$deviceId:J

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->val$acquiredInfo:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->val$vendorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1162
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->this$1:Lcom/android/server/fingerprint/FingerprintService$12;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$12;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-wide v1, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->val$deviceId:J

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->val$acquiredInfo:I

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$12$2;->val$vendorCode:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleAcquired(JII)V

    .line 1163
    return-void
.end method
