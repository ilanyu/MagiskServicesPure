.class Lcom/android/server/HandyMode$8;
.super Ljava/lang/Object;
.source "HandyMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->refreshStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mode:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 254
    iput p1, p0, Lcom/android/server/HandyMode$8;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 256
    iget v0, p0, Lcom/android/server/HandyMode$8;->val$mode:I

    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 257
    return-void
.end method
