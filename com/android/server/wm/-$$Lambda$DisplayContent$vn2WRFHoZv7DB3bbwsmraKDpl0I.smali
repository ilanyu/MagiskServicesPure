.class public final synthetic Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;->f$0:Lcom/android/server/wm/DisplayContent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;->f$0:Lcom/android/server/wm/DisplayContent;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/DisplayContent;->lambda$onSeamlessRotationTimeout$25(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V

    return-void
.end method
