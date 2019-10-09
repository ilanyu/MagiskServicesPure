.class public Lcom/android/server/pm/Settings$VersionInfo;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field databaseVersion:I

.field fingerprint:Ljava/lang/String;

.field sdkVersion:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public forceCurrent()V
    .registers 2

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 352
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 353
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    .line 354
    return-void
.end method
