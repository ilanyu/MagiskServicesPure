.class Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;
.super Ljava/lang/Object;
.source "AutomaticBrightnessControllerInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessControllerInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BrightnessEvent"
.end annotation


# instance fields
.field brightness:I

.field time:J


# direct methods
.method constructor <init>(JI)V
    .registers 4
    .param p1, "time"    # J
    .param p3, "brightness"    # I

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->time:J

    .line 677
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->brightness:I

    .line 678
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessControllerInjector$BrightnessEvent;->brightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
