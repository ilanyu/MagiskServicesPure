.class public Lcom/android/server/appwidget/AppWidgetServiceImplInjector;
.super Ljava/lang/Object;
.source "AppWidgetServiceImplInjector.java"


# static fields
.field public static final ENABLED_WIDGETS:Ljava/lang/String; = "enabled_widgets"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/android/server/appwidget/AppWidgetServiceImplInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appwidget/AppWidgetServiceImplInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateWidgetPackagesLocked(Landroid/content/Context;Ljava/util/List;I)V
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;",
            ">;I)V"
        }
    .end annotation

    .line 19
    .local p1, "mProviders":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;>;"
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 20
    .local v0, "pkgSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 21
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_9
    if-ge v2, v1, :cond_2e

    .line 22
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;

    .line 24
    .local v3, "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    invoke-virtual {v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->getUserId()I

    move-result v4

    if-eq v4, p2, :cond_18

    .line 25
    goto :goto_2b

    .line 27
    :cond_18
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2b

    .line 28
    iget-object v4, v3, Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;->info:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v4, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .end local v3    # "provider":Lcom/android/server/appwidget/AppWidgetServiceImpl$Provider;
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 31
    .end local v2    # "index":I
    :cond_2e
    const/4 v2, 0x0

    .line 32
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 33
    .local v4, "pkg":Ljava/lang/String;
    if-nez v2, :cond_48

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v5

    goto :goto_4d

    .line 36
    :cond_48
    const/16 v5, 0x3a

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    :goto_4d
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .end local v4    # "pkg":Ljava/lang/String;
    goto :goto_33

    .line 40
    :cond_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 41
    .local v3, "identity":J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_widgets"

    .line 43
    if-eqz v2, :cond_62

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_64

    :cond_62
    const-string v7, ""

    .line 41
    :goto_64
    invoke-static {v5, v6, v7, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 45
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 46
    return-void
.end method
