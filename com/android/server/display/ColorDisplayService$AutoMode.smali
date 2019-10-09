.class abstract Lcom/android/server/display/ColorDisplayService$AutoMode;
.super Ljava/lang/Object;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AutoMode"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorDisplayService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/ColorDisplayService;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService$AutoMode;->this$0:Lcom/android/server/display/ColorDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/ColorDisplayService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p2, "x1"    # Lcom/android/server/display/ColorDisplayService$1;

    .line 437
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    return-void
.end method


# virtual methods
.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method
