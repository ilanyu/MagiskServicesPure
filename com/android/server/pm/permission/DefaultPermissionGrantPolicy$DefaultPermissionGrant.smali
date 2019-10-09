.class final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultPermissionGrant"
.end annotation


# instance fields
.field final fixed:Z

.field final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fixed"    # Z

    .line 1499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1500
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    .line 1501
    iput-boolean p2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    .line 1502
    return-void
.end method
