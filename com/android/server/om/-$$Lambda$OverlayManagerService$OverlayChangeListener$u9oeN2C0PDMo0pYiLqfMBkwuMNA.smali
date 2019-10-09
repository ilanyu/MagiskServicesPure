.class public final synthetic Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iput p2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;->f$1:I

    iput-object p3, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;->f$0:Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    iget v1, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;->f$1:I

    iget-object v2, p0, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$u9oeN2C0PDMo0pYiLqfMBkwuMNA;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->lambda$onOverlaysChanged$0(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ILjava/lang/String;)V

    return-void
.end method
