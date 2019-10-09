.class Lcom/android/server/firewall/AndFilter;
.super Lcom/android/server/firewall/FilterList;
.source "AndFilter.java"


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 39
    new-instance v0, Lcom/android/server/firewall/AndFilter$1;

    const-string v1, "and"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/AndFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/AndFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Lcom/android/server/firewall/FilterList;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 20
    .param p1, "ifw"    # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "callerUid"    # I
    .param p5, "callerPid"    # I
    .param p6, "resolvedType"    # Ljava/lang/String;
    .param p7, "receivingUid"    # I

    move-object v0, p0

    .line 30
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_3
    iget-object v3, v0, Lcom/android/server/firewall/AndFilter;->children:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_29

    .line 31
    iget-object v3, v0, Lcom/android/server/firewall/AndFilter;->children:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/firewall/Filter;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v4 .. v11}, Lcom/android/server/firewall/Filter;->matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_26

    .line 33
    return v1

    .line 30
    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 36
    .end local v2    # "i":I
    :cond_29
    const/4 v1, 0x1

    return v1
.end method
