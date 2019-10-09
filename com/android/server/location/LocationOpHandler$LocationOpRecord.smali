.class public Lcom/android/server/location/LocationOpHandler$LocationOpRecord;
.super Ljava/lang/Object;
.source "LocationOpHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationOpHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationOpRecord"
.end annotation


# instance fields
.field locationOp:I

.field final synthetic this$0:Lcom/android/server/location/LocationOpHandler;

.field timestamp:J

.field uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationOpHandler;IIJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/location/LocationOpHandler;
    .param p2, "uid"    # I
    .param p3, "locationOp"    # I
    .param p4, "timestamp"    # J

    .line 100
    iput-object p1, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->this$0:Lcom/android/server/location/LocationOpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p2, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->uid:I

    .line 102
    iput p3, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->locationOp:I

    .line 103
    iput-wide p4, p0, Lcom/android/server/location/LocationOpHandler$LocationOpRecord;->timestamp:J

    .line 104
    return-void
.end method
