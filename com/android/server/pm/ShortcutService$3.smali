.class Lcom/android/server/pm/ShortcutService$3;
.super Landroid/app/IUidObserver$Stub;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .line 491
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onUidGone$1(Lcom/android/server/pm/ShortcutService$3;I)V
    .registers 4
    .param p1, "uid"    # I

    .line 500
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    const/16 v1, 0x13

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method

.method public static synthetic lambda$onUidStateChanged$0(Lcom/android/server/pm/ShortcutService$3;II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ShortcutService;->handleOnUidStateChanged(II)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 505
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "cached"    # Z

    .line 512
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 499
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$WghiV-HLnzJqZabObC5uHCmb960;-><init>(Lcom/android/server/pm/ShortcutService$3;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 501
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z

    .line 509
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$3;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$ShortcutService$3$n_VdEzyBcjs0pGZO8GnB0FoTgR0;-><init>(Lcom/android/server/pm/ShortcutService$3;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutService;->injectPostToHandler(Ljava/lang/Runnable;)V

    .line 495
    return-void
.end method
