.class Lcom/android/server/pm/PackageManagerService$7;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/pm/ProviderInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 13983
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I
    .registers 6
    .param p1, "p1"    # Landroid/content/pm/ProviderInfo;
    .param p2, "p2"    # Landroid/content/pm/ProviderInfo;

    .line 13985
    iget v0, p1, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 13986
    .local v0, "v1":I
    iget v1, p2, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 13987
    .local v1, "v2":I
    if-le v0, v1, :cond_8

    const/4 v2, -0x1

    goto :goto_d

    :cond_8
    if-ge v0, v1, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 13983
    check-cast p1, Landroid/content/pm/ProviderInfo;

    check-cast p2, Landroid/content/pm/ProviderInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$7;->compare(Landroid/content/pm/ProviderInfo;Landroid/content/pm/ProviderInfo;)I

    move-result p1

    return p1
.end method
