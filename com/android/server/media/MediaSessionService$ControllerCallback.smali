.class Lcom/android/server/media/MediaSessionService$ControllerCallback;
.super Landroid/media/MediaController2$ControllerCallback;
.source "MediaSessionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerCallback"
.end annotation


# instance fields
.field private final mToken:Landroid/media/SessionToken2;

.field final synthetic this$0:Lcom/android/server/media/MediaSessionService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService;Landroid/media/SessionToken2;)V
    .registers 3
    .param p2, "token"    # Landroid/media/SessionToken2;

    .line 2222
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-direct {p0}, Landroid/media/MediaController2$ControllerCallback;-><init>()V

    .line 2223
    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->mToken:Landroid/media/SessionToken2;

    .line 2224
    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/media/MediaController2;)V
    .registers 4
    .param p1, "controller"    # Landroid/media/MediaController2;

    .line 2228
    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->this$0:Lcom/android/server/media/MediaSessionService;

    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$ControllerCallback;->mToken:Landroid/media/SessionToken2;

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaSessionService;->destroySession2Internal(Landroid/media/SessionToken2;)V

    .line 2229
    return-void
.end method
