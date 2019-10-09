.class Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HdmiControl"
.end annotation


# instance fields
.field private final mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;


# direct methods
.method private constructor <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;)V
    .registers 2
    .param p1, "client"    # Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 1985
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1986
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    .line 1987
    return-void
.end method

.method synthetic constructor <init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/hardware/hdmi/HdmiPlaybackClient;
    .param p2, "x1"    # Lcom/android/server/policy/PhoneWindowManager$1;

    .line 1982
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;)V

    return-void
.end method


# virtual methods
.method public turnOnTv()V
    .registers 3

    .line 1990
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    if-nez v0, :cond_5

    .line 1991
    return-void

    .line 1993
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->mClient:Landroid/hardware/hdmi/HdmiPlaybackClient;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl$1;-><init>(Lcom/android/server/policy/PhoneWindowManager$HdmiControl;)V

    invoke-virtual {v0, v1}, Landroid/hardware/hdmi/HdmiPlaybackClient;->oneTouchPlay(Landroid/hardware/hdmi/HdmiPlaybackClient$OneTouchPlayCallback;)V

    .line 2001
    return-void
.end method
