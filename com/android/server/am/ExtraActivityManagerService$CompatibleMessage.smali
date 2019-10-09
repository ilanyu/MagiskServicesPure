.class final Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;
.super Ljava/lang/Object;
.source "ExtraActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ExtraActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CompatibleMessage"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 490
    iput-object p1, p0, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;->context:Landroid/content/Context;

    .line 491
    iput-object p2, p0, Lcom/android/server/am/ExtraActivityManagerService$CompatibleMessage;->message:Ljava/lang/String;

    .line 492
    return-void
.end method
