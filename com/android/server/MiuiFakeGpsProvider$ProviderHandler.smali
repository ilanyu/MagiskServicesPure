.class final Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "MiuiFakeGpsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MiuiFakeGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MiuiFakeGpsProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;)V
    .registers 2

    .line 131
    iput-object p1, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/server/MiuiFakeGpsProvider$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/MiuiFakeGpsProvider;
    .param p2, "x1"    # Lcom/android/server/MiuiFakeGpsProvider$1;

    .line 131
    invoke-direct {p0, p1}, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;-><init>(Lcom/android/server/MiuiFakeGpsProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 134
    iget v0, p1, Landroid/os/Message;->what:I

    .line 135
    .local v0, "message":I
    packed-switch v0, :pswitch_data_18

    goto :goto_16

    .line 140
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    # invokes: Lcom/android/server/MiuiFakeGpsProvider;->cancelNlpLocationRequest()V
    invoke-static {v1}, Lcom/android/server/MiuiFakeGpsProvider;->access$400(Lcom/android/server/MiuiFakeGpsProvider;)V

    .line 141
    goto :goto_16

    .line 137
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/MiuiFakeGpsProvider$ProviderHandler;->this$0:Lcom/android/server/MiuiFakeGpsProvider;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/location/ProviderRequest;

    # invokes: Lcom/android/server/MiuiFakeGpsProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    invoke-static {v1, v2}, Lcom/android/server/MiuiFakeGpsProvider;->access$300(Lcom/android/server/MiuiFakeGpsProvider;Lcom/android/internal/location/ProviderRequest;)V

    .line 138
    nop

    .line 145
    :goto_16
    return-void

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method
