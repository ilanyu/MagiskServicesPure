.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerService$YGMOwF5u3kvuRAEYnGl_xpXcVC4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$YGMOwF5u3kvuRAEYnGl_xpXcVC4;->f$0:Lcom/android/server/om/OverlayManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$YGMOwF5u3kvuRAEYnGl_xpXcVC4;->f$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->lambda$schedulePersistSettings$1(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method
