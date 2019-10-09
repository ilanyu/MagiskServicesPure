.class Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhysicalAddressValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;


# direct methods
.method private constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V
    .registers 2

    .line 296
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p2, "x1"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$1;

    .line 296
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;)V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 4
    .param p1, "params"    # [B

    .line 299
    array-length v0, p1

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 300
    const/4 v0, 0x4

    return v0

    .line 302
    :cond_6
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->this$0:Lcom/android/server/hdmi/HdmiCecMessageValidator;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z
    invoke-static {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z

    move-result v0

    # invokes: Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->access$500(Z)I

    move-result v0

    return v0
.end method
