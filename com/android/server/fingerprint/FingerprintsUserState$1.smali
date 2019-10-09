.class Lcom/android/server/fingerprint/FingerprintsUserState$1;
.super Ljava/lang/Object;
.source "FingerprintsUserState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintsUserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintsUserState;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintsUserState;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/fingerprint/FingerprintsUserState;

    .line 140
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->this$0:Lcom/android/server/fingerprint/FingerprintsUserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintsUserState$1;->this$0:Lcom/android/server/fingerprint/FingerprintsUserState;

    # invokes: Lcom/android/server/fingerprint/FingerprintsUserState;->doWriteState()V
    invoke-static {v0}, Lcom/android/server/fingerprint/FingerprintsUserState;->access$000(Lcom/android/server/fingerprint/FingerprintsUserState;)V

    .line 144
    return-void
.end method
