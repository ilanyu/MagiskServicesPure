.class public Lcom/android/server/hdmi/SelectRequestBuffer;
.super Ljava/lang/Object;
.source "SelectRequestBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;,
        Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;,
        Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;
    }
.end annotation


# static fields
.field public static final EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

.field private static final TAG:Ljava/lang/String; = "SelectRequestBuffer"


# instance fields
.field private mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer$1;

    invoke-direct {v0}, Lcom/android/server/hdmi/SelectRequestBuffer$1;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/SelectRequestBuffer;->EMPTY_BUFFER:Lcom/android/server/hdmi/SelectRequestBuffer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newDeviceSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;
    .registers 5
    .param p0, "srv"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 115
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/SelectRequestBuffer$DeviceSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;Lcom/android/server/hdmi/SelectRequestBuffer$1;)V

    return-object v0
.end method

.method public static newPortSelect(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;)Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;
    .registers 5
    .param p0, "srv"    # Lcom/android/server/hdmi/HdmiControlService;
    .param p1, "id"    # I
    .param p2, "callback"    # Landroid/hardware/hdmi/IHdmiControlCallback;

    .line 120
    new-instance v0, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/SelectRequestBuffer$PortSelectRequest;-><init>(Lcom/android/server/hdmi/HdmiControlService;ILandroid/hardware/hdmi/IHdmiControlCallback;Lcom/android/server/hdmi/SelectRequestBuffer$1;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    .line 140
    return-void
.end method

.method public process()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    if-eqz v0, :cond_c

    .line 133
    iget-object v0, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;->process()V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/hdmi/SelectRequestBuffer;->clear()V

    .line 136
    :cond_c
    return-void
.end method

.method public set(Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;)V
    .registers 2
    .param p1, "request"    # Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    .line 128
    iput-object p1, p0, Lcom/android/server/hdmi/SelectRequestBuffer;->mRequest:Lcom/android/server/hdmi/SelectRequestBuffer$SelectRequest;

    .line 129
    return-void
.end method
