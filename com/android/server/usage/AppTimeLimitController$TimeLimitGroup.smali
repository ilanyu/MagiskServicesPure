.class Lcom/android/server/usage/AppTimeLimitController$TimeLimitGroup;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeLimitGroup"
.end annotation


# instance fields
.field callbackIntent:Landroid/app/PendingIntent;

.field currentPackage:Ljava/lang/String;

.field observerId:I

.field packages:[Ljava/lang/String;

.field requestingUid:I

.field timeCurrentPackageStarted:J

.field timeLimit:J

.field timeRemaining:J

.field timeRequested:J

.field userId:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
