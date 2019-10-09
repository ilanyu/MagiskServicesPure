.class public final synthetic Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/AlertWindowNotification;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/AlertWindowNotification;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    iput-boolean p2, p0, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s;->f$0:Lcom/android/server/wm/AlertWindowNotification;

    iget-boolean v1, p0, Lcom/android/server/wm/-$$Lambda$AlertWindowNotification$ZuqSYML-X-nkNVTba_yeIT9hJ1s;->f$1:Z

    invoke-static {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->lambda$cancel$0(Lcom/android/server/wm/AlertWindowNotification;Z)V

    return-void
.end method
