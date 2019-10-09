.class Lcom/android/server/wm/AppTransitionInjector$1;
.super Ljava/util/ArrayList;
.source "AppTransitionInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppTransitionInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .line 80
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    const-string v0, "com.android.quicksearchbox"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransitionInjector$1;->add(Ljava/lang/Object;)Z

    .line 83
    const-string v0, "com.android.systemui"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransitionInjector$1;->add(Ljava/lang/Object;)Z

    .line 84
    const-string v0, "com.miui.newhome"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransitionInjector$1;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method
