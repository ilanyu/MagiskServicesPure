.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->rename(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$fingerId:I

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;ILjava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    .line 1417
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$fingerId:I

    iput-object p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1423
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2700(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v1, v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1700(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$fingerId:I

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/server/fingerprint/FingerprintUtils;->renameFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 1426
    return-void
.end method
