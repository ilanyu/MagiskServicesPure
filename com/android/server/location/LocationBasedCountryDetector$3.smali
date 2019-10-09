.class Lcom/android/server/location/LocationBasedCountryDetector$3;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationBasedCountryDetector;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/location/LocationBasedCountryDetector;

    .line 243
    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "countryIso":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    if-eqz v1, :cond_d

    .line 248
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 250
    :cond_d
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 251
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    new-instance v3, Landroid/location/Country;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    goto :goto_1f

    .line 253
    :cond_1b
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v1, v2, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    .line 255
    :goto_1f
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v3, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v3, v3, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    invoke-virtual {v2, v3}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V

    .line 256
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v1, v2, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    .line 257
    return-void
.end method
