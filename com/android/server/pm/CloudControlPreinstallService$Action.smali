.class public Lcom/android/server/pm/CloudControlPreinstallService$Action;
.super Ljava/lang/Object;
.source "CloudControlPreinstallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/CloudControlPreinstallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field protected static final ACTION_KEY:Ljava/lang/String; = "_action_"

.field protected static final CATEGORY:Ljava/lang/String; = "_category_"

.field protected static final EVENT_ID:Ljava/lang/String; = "_event_id_"

.field protected static final LABEL:Ljava/lang/String; = "_label_"

.field protected static final VALUE:Ljava/lang/String; = "_value_"


# instance fields
.field private mContent:Lorg/json/JSONObject;

.field private mExtra:Lorg/json/JSONObject;

.field private sKeywords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->mContent:Lorg/json/JSONObject;

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->mExtra:Lorg/json/JSONObject;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->sKeywords:Ljava/util/Set;

    .line 92
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_event_id_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_category_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_action_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_label_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->sKeywords:Ljava/util/Set;

    const-string v1, "_value_"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    return-void
.end method

.method private ensureKey(Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->sKeywords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_2c

    .line 155
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "this key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is built-in, please pick another key."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_2c
    :goto_2c
    return-void
.end method


# virtual methods
.method addContent(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 126
    :try_start_6
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 129
    goto :goto_10

    .line 127
    :catch_c
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method addContent(Ljava/lang/String;J)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 136
    :try_start_6
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 139
    goto :goto_10

    .line 137
    :catch_c
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method addContent(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 146
    :try_start_6
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->mContent:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_c

    .line 149
    goto :goto_10

    .line 147
    :catch_c
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_10
    return-void
.end method

.method public addParam(Ljava/lang/String;I)Lcom/android/server/pm/CloudControlPreinstallService$Action;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->ensureKey(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addContent(Ljava/lang/String;I)V

    .line 108
    return-object p0
.end method

.method public addParam(Ljava/lang/String;J)Lcom/android/server/pm/CloudControlPreinstallService$Action;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 112
    invoke-direct {p0, p1}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->ensureKey(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addContent(Ljava/lang/String;J)V

    .line 114
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/CloudControlPreinstallService$Action;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->ensureKey(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    return-object p0
.end method

.method public addParam(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/android/server/pm/CloudControlPreinstallService$Action;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->ensureKey(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CloudControlPreinstallService$Action;->addContent(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-object p0
.end method

.method final getContent()Lorg/json/JSONObject;
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->mContent:Lorg/json/JSONObject;

    return-object v0
.end method

.method final getExtra()Lorg/json/JSONObject;
    .registers 2

    .line 164
    iget-object v0, p0, Lcom/android/server/pm/CloudControlPreinstallService$Action;->mExtra:Lorg/json/JSONObject;

    return-object v0
.end method
