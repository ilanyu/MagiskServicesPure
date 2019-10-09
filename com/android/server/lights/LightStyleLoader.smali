.class public Lcom/android/server/lights/LightStyleLoader;
.super Ljava/lang/Object;
.source "LightStyleLoader.java"


# static fields
.field private static final BRIGHTNESS_MODE:Ljava/lang/String; = "brightnessMode"

.field private static final COLOR_ARGB:Ljava/lang/String; = "colorARGB"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_INTERVAL:I = 0x64

.field private static final FLASH_MODE:Ljava/lang/String; = "flashMode"

.field private static final LIGHTSTATE:Ljava/lang/String; = "lightstate"

.field private static final OFFMS:Ljava/lang/String; = "offMS"

.field private static final ONMS:Ljava/lang/String; = "onMS"

.field private static final TAG:Ljava/lang/String; = "LightsService"


# instance fields
.field private mStyleArray:Landroid/util/SparseArray;

.field private final resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->resources:Landroid/content/res/Resources;

    .line 42
    iget-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "lightstyle_default"

    invoke-static {v1}, Lcom/android/server/lights/LightStyleLoader;->getIdentifierByReflect(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "lightstyle_phone"

    invoke-static {v1}, Lcom/android/server/lights/LightStyleLoader;->getIdentifierByReflect(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 44
    iget-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "lightstyle_game"

    invoke-static {v1}, Lcom/android/server/lights/LightStyleLoader;->getIdentifierByReflect(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "lightstyle_music"

    invoke-static {v1}, Lcom/android/server/lights/LightStyleLoader;->getIdentifierByReflect(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "lightstyle_alarm"

    invoke-static {v1}, Lcom/android/server/lights/LightStyleLoader;->getIdentifierByReflect(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "lightstyle_expand"

    invoke-static {v1}, Lcom/android/server/lights/LightStyleLoader;->getIdentifierByReflect(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    const-string/jumbo v1, "lightstyle_luckymoney"

    invoke-static {v1}, Lcom/android/server/lights/LightStyleLoader;->getIdentifierByReflect(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 49
    return-void
.end method

.method private static getIdentifierByReflect(Ljava/lang/String;)I
    .registers 4
    .param p0, "src_name"    # Ljava/lang/String;

    .line 114
    :try_start_0
    const-string v0, "android.miui.R$raw"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 115
    .local v0, "miui_R_Class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 116
    .local v1, "res_Field":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return v2

    .line 117
    .end local v0    # "miui_R_Class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "res_Field":Ljava/lang/reflect/Field;
    :catch_10
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    const/16 v0, -0x64

    return v0
.end method


# virtual methods
.method public getLightStyle(I)Ljava/util/List;
    .registers 27
    .param p1, "styleType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/server/lights/LightState;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 52
    move/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 53
    .local v3, "ls_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/lights/LightState;>;"
    const/4 v0, 0x0

    move-object v4, v0

    .line 55
    .local v4, "is":Ljava/io/InputStream;
    if-ltz v2, :cond_186

    :try_start_e
    iget-object v0, v1, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    goto/16 :goto_186

    .line 60
    :cond_18
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 61
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 62
    .local v5, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v6, Ljava/io/BufferedInputStream;

    iget-object v7, v1, Lcom/android/server/lights/LightStyleLoader;->resources:Landroid/content/res/Resources;

    iget-object v8, v1, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    const/16 v8, 0x1000

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v4, v6

    .line 63
    invoke-virtual {v5, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 64
    .local v6, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v7, "lightstate"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 65
    .local v7, "lightList":Lorg/w3c/dom/NodeList;
    const/4 v8, -0x1

    .line 66
    .local v8, "colorARGB":I
    const/4 v9, 0x1

    .line 67
    .local v9, "flashMode":I
    const/16 v10, 0x64

    .line 68
    .local v10, "offMS":I
    const/16 v11, 0x64

    .line 69
    .local v11, "onMS":I
    const/4 v12, 0x0

    .line 70
    .local v12, "brightnessMode":I
    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v8

    const/4 v8, 0x0

    .line 70
    .local v8, "i":I
    .local v9, "colorARGB":I
    .local v10, "flashMode":I
    .local v11, "offMS":I
    .local v12, "onMS":I
    .local v14, "brightnessMode":I
    :goto_52
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v8, v15, :cond_149

    .line 71
    invoke-interface {v7, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 72
    .local v15, "childNodes":Lorg/w3c/dom/NodeList;
    move/from16 v22, v14

    move v14, v12

    move v12, v11

    move v11, v10

    move v10, v9

    const/4 v9, 0x0

    .line 72
    .local v9, "j":I
    .local v10, "colorARGB":I
    .local v11, "flashMode":I
    .local v12, "offMS":I
    .local v14, "onMS":I
    .local v22, "brightnessMode":I
    :goto_67
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v13

    if-ge v9, v13, :cond_127

    .line 73
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v13

    move-object/from16 v23, v0

    const/4 v0, 0x1

    .line 73
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v23, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    if-ne v13, v0, :cond_121

    .line 74
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const/16 v16, -0x1

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_18c

    goto :goto_c0

    :sswitch_8c
    const-string v0, "brightnessMode"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v13, 0x4

    goto :goto_c2

    :sswitch_96
    const-string v0, "colorARGB"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v13, 0x0

    goto :goto_c2

    :sswitch_a0
    const-string/jumbo v0, "offMS"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v13, 0x2

    goto :goto_c2

    :sswitch_ab
    const-string/jumbo v0, "onMS"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v13, 0x3

    goto :goto_c2

    :sswitch_b6
    const-string v0, "flashMode"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    const/4 v13, 0x1

    goto :goto_c2

    :cond_c0
    :goto_c0
    move/from16 v13, v16

    :goto_c2
    packed-switch v13, :pswitch_data_1a2

    goto :goto_121

    .line 88
    :pswitch_c6
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v22, v0

    .line 89
    goto :goto_121

    .line 85
    :pswitch_d9
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v14, v0

    .line 86
    goto :goto_121

    .line 82
    :pswitch_eb
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v12, v0

    .line 83
    goto :goto_121

    .line 79
    :pswitch_fd
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 80
    goto :goto_121

    .line 76
    :pswitch_10f
    invoke-interface {v15, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    move v10, v0

    .line 77
    nop

    .line 72
    :cond_121
    :goto_121
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    goto/16 :goto_67

    .line 95
    .end local v9    # "j":I
    .end local v23    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_127
    move-object/from16 v23, v0

    .line 95
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v23    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    new-instance v0, Lcom/android/server/lights/LightState;

    move-object/from16 v16, v0

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v14

    move/from16 v20, v12

    move/from16 v21, v22

    invoke-direct/range {v16 .. v21}, Lcom/android/server/lights/LightState;-><init>(IIIII)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13d} :catch_151
    .catchall {:try_start_e .. :try_end_13d} :catchall_14f

    .line 70
    .end local v15    # "childNodes":Lorg/w3c/dom/NodeList;
    add-int/lit8 v8, v8, 0x1

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v14

    move/from16 v14, v22

    move-object/from16 v0, v23

    goto/16 :goto_52

    .line 97
    .end local v8    # "i":I
    .end local v22    # "brightnessMode":I
    .end local v23    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .local v9, "colorARGB":I
    .local v10, "flashMode":I
    .local v11, "offMS":I
    .local v12, "onMS":I
    .local v14, "brightnessMode":I
    :cond_149
    move-object/from16 v23, v0

    .line 102
    .end local v0    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v23    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 97
    return-object v3

    .line 102
    .end local v5    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "lightList":Lorg/w3c/dom/NodeList;
    .end local v9    # "colorARGB":I
    .end local v10    # "flashMode":I
    .end local v11    # "offMS":I
    .end local v12    # "onMS":I
    .end local v14    # "brightnessMode":I
    .end local v23    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_14f
    move-exception v0

    goto :goto_182

    .line 98
    :catch_151
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    :try_start_152
    const-string v5, "LightsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error style : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/lights/LightStyleLoader;->mStyleArray:Landroid/util/SparseArray;

    invoke-virtual {v7, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " -- "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_17d
    .catchall {:try_start_152 .. :try_end_17d} :catchall_14f

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 103
    nop

    .line 104
    return-object v3

    .line 102
    :goto_182
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 56
    :cond_186
    :goto_186
    nop

    .line 102
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 56
    return-object v3

    nop

    :sswitch_data_18c
    .sparse-switch
        -0x4464da4d -> :sswitch_b6
        0x341bc5 -> :sswitch_ab
        0x64c1755 -> :sswitch_a0
        0x76098eaf -> :sswitch_96
        0x76464994 -> :sswitch_8c
    .end sparse-switch

    :pswitch_data_1a2
    .packed-switch 0x0
        :pswitch_10f
        :pswitch_fd
        :pswitch_eb
        :pswitch_d9
        :pswitch_c6
    .end packed-switch
.end method
