.class Lcom/android/server/HandyMode$10;
.super Ljava/lang/Object;
.source "HandyMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HandyMode;->changeMode(I)V
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

    .line 328
    iput p1, p0, Lcom/android/server/HandyMode$10;->val$mode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 331
    iget v0, p0, Lcom/android/server/HandyMode$10;->val$mode:I

    invoke-static {v0}, Lcom/android/server/HandyMode;->changeMode(I)V

    .line 332
    return-void
.end method
