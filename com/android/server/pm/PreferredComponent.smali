.class public Lcom/android/server/pm/PreferredComponent;
.super Ljava/lang/Object;
.source "PreferredComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PreferredComponent$Callbacks;
    }
.end annotation


# static fields
.field private static final ATTR_ALWAYS:Ljava/lang/String; = "always"

.field private static final ATTR_MATCH:Ljava/lang/String; = "match"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_SET:Ljava/lang/String; = "set"

.field private static final TAG_SET:Ljava/lang/String; = "set"


# instance fields
.field public mAlways:Z

.field private final mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

.field public final mComponent:Landroid/content/ComponentName;

.field public final mMatch:I

.field private mParseError:Ljava/lang/String;

.field final mSetClasses:[Ljava/lang/String;

.field final mSetComponents:[Ljava/lang/String;

.field final mSetPackages:[Ljava/lang/String;

.field final mShortComponent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .registers 14
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "component"    # Landroid/content/ComponentName;
    .param p5, "always"    # Z

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 64
    const/high16 v0, 0xfff0000

    and-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 65
    iput-object p4, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 66
    iput-boolean p5, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 67
    invoke-virtual {p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 69
    if-eqz p3, :cond_52

    .line 70
    array-length v1, p3

    .line 71
    .local v1, "N":I
    new-array v2, v1, [Ljava/lang/String;

    .line 72
    .local v2, "myPackages":[Ljava/lang/String;
    new-array v3, v1, [Ljava/lang/String;

    .line 73
    .local v3, "myClasses":[Ljava/lang/String;
    new-array v4, v1, [Ljava/lang/String;

    .line 74
    .local v4, "myComponents":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_21
    if-ge v5, v1, :cond_4b

    .line 75
    aget-object v6, p3, v5

    .line 76
    .local v6, "cn":Landroid/content/ComponentName;
    if-nez v6, :cond_2e

    .line 77
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 80
    return-void

    .line 82
    :cond_2e
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v5

    .line 83
    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v5

    .line 84
    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    .line 74
    .end local v6    # "cn":Landroid/content/ComponentName;
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 86
    .end local v5    # "i":I
    :cond_4b
    iput-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 87
    iput-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 88
    iput-object v4, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 89
    .end local v1    # "N":I
    .end local v2    # "myPackages":[Ljava/lang/String;
    .end local v3    # "myClasses":[Ljava/lang/String;
    .end local v4    # "myComponents":[Ljava/lang/String;
    goto :goto_58

    .line 90
    :cond_52
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 94
    :goto_58
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lorg/xmlpull/v1/XmlPullParser;)V
    .registers 20
    .param p1, "callbacks"    # Lcom/android/server/pm/PreferredComponent$Callbacks;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 97
    move-object/from16 v1, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    .line 99
    const-string/jumbo v3, "name"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    .line 100
    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 101
    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_36

    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad activity name "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 104
    :cond_36
    const-string/jumbo v3, "match"

    invoke-interface {v1, v4, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, "matchStr":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_47

    const/16 v6, 0x10

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_48

    :cond_47
    move v6, v5

    :goto_48
    iput v6, v0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    .line 106
    const-string/jumbo v6, "set"

    invoke-interface {v1, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    .local v6, "setCountStr":Ljava/lang/String;
    if-eqz v6, :cond_58

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    nop

    .line 108
    .local v5, "setCount":I
    :cond_58
    const-string v7, "always"

    invoke-interface {v1, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "alwaysStr":Ljava/lang/String;
    const/4 v8, 0x1

    if-eqz v7, :cond_66

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    goto :goto_67

    :cond_66
    move v9, v8

    :goto_67
    iput-boolean v9, v0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    .line 111
    if-lez v5, :cond_6e

    new-array v9, v5, [Ljava/lang/String;

    goto :goto_6f

    :cond_6e
    move-object v9, v4

    .line 112
    .local v9, "myPackages":[Ljava/lang/String;
    :goto_6f
    if-lez v5, :cond_74

    new-array v10, v5, [Ljava/lang/String;

    goto :goto_75

    :cond_74
    move-object v10, v4

    .line 113
    .local v10, "myClasses":[Ljava/lang/String;
    :goto_75
    if-lez v5, :cond_7a

    new-array v11, v5, [Ljava/lang/String;

    goto :goto_7b

    :cond_7a
    move-object v11, v4

    .line 115
    .local v11, "myComponents":[Ljava/lang/String;
    :goto_7b
    const/4 v12, 0x0

    .line 117
    .local v12, "setPos":I
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    .line 119
    .local v13, "outerDepth":I
    :goto_80
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    move v15, v14

    .line 119
    .local v15, "type":I
    if-eq v14, v8, :cond_162

    const/4 v14, 0x3

    if-ne v15, v14, :cond_95

    .line 121
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v13, :cond_91

    goto :goto_95

    .line 163
    :cond_91
    move-object/from16 v16, v3

    goto/16 :goto_164

    .line 122
    :cond_95
    :goto_95
    if-eq v15, v14, :cond_158

    const/4 v8, 0x4

    if-ne v15, v8, :cond_9f

    .line 124
    nop

    .line 117
    move-object/from16 v16, v3

    goto/16 :goto_15a

    .line 127
    :cond_9f
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 130
    .local v8, "tagName":Ljava/lang/String;
    const-string/jumbo v14, "set"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_130

    .line 131
    const-string/jumbo v14, "name"

    invoke-interface {v1, v4, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 132
    .local v14, "name":Ljava/lang/String;
    if-nez v14, :cond_d1

    .line 133
    iget-object v4, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_ce

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No name in set tag in preferred activity "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 156
    .end local v3    # "matchStr":Ljava/lang/String;
    .local v16, "matchStr":Ljava/lang/String;
    :cond_ce
    :goto_ce
    move-object/from16 v16, v3

    goto :goto_12c

    .line 137
    .end local v16    # "matchStr":Ljava/lang/String;
    .restart local v3    # "matchStr":Ljava/lang/String;
    :cond_d1
    if-lt v12, v5, :cond_ed

    .line 138
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_ce

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too many set tags in preferred activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_ce

    .line 143
    :cond_ed
    invoke-static {v14}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 144
    .local v2, "cn":Landroid/content/ComponentName;
    if-nez v2, :cond_11a

    .line 145
    iget-object v4, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v4, :cond_117

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    const-string v3, "Bad set name "

    .line 146
    .end local v3    # "matchStr":Ljava/lang/String;
    .restart local v16    # "matchStr":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in preferred activity "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    goto :goto_12c

    .line 156
    .end local v2    # "cn":Landroid/content/ComponentName;
    .end local v16    # "matchStr":Ljava/lang/String;
    .restart local v3    # "matchStr":Ljava/lang/String;
    :cond_117
    move-object/from16 v16, v3

    .line 156
    .end local v3    # "matchStr":Ljava/lang/String;
    .restart local v16    # "matchStr":Ljava/lang/String;
    goto :goto_12c

    .line 150
    .end local v16    # "matchStr":Ljava/lang/String;
    .restart local v2    # "cn":Landroid/content/ComponentName;
    .restart local v3    # "matchStr":Ljava/lang/String;
    :cond_11a
    move-object/from16 v16, v3

    .line 150
    .end local v3    # "matchStr":Ljava/lang/String;
    .restart local v16    # "matchStr":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v9, v12

    .line 151
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v12

    .line 152
    aput-object v14, v11, v12

    .line 153
    add-int/lit8 v12, v12, 0x1

    .line 156
    .end local v2    # "cn":Landroid/content/ComponentName;
    :goto_12c
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 157
    .end local v14    # "name":Ljava/lang/String;
    goto :goto_157

    .line 157
    .end local v16    # "matchStr":Ljava/lang/String;
    .restart local v3    # "matchStr":Ljava/lang/String;
    :cond_130
    move-object/from16 v16, v3

    .line 157
    .end local v3    # "matchStr":Ljava/lang/String;
    .restart local v16    # "matchStr":Ljava/lang/String;
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mCallbacks:Lcom/android/server/pm/PreferredComponent$Callbacks;

    invoke-interface {v2, v8, v1}, Lcom/android/server/pm/PreferredComponent$Callbacks;->onReadTag(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v2

    if-nez v2, :cond_157

    .line 158
    const-string v2, "PreferredComponent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 161
    .end local v8    # "tagName":Ljava/lang/String;
    :cond_157
    :goto_157
    goto :goto_15a

    .line 117
    .end local v15    # "type":I
    .end local v16    # "matchStr":Ljava/lang/String;
    .restart local v3    # "matchStr":Ljava/lang/String;
    :cond_158
    move-object/from16 v16, v3

    :goto_15a
    move-object/from16 v3, v16

    move-object/from16 v2, p1

    const/4 v4, 0x0

    const/4 v8, 0x1

    goto/16 :goto_80

    .line 163
    .restart local v15    # "type":I
    :cond_162
    move-object/from16 v16, v3

    .line 163
    .end local v3    # "matchStr":Ljava/lang/String;
    .restart local v16    # "matchStr":Ljava/lang/String;
    :goto_164
    if-eq v12, v5, :cond_18f

    .line 164
    iget-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    if-nez v2, :cond_18f

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enough set tags (expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    .line 170
    :cond_18f
    iput-object v9, v0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    .line 171
    iput-object v10, v0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    .line 172
    iput-object v11, v0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public discardObsoleteComponents(Ljava/util/List;)[Landroid/content/ComponentName;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)[",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 274
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    if-nez p1, :cond_8

    goto :goto_5e

    .line 277
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 278
    .local v0, "NQ":I
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    .line 279
    .local v2, "NS":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    .local v3, "aliveComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move v4, v1

    .local v4, "i":I
    :goto_15
    if-ge v4, v0, :cond_51

    .line 281
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 282
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 283
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    move v7, v1

    .local v7, "j":I
    :goto_20
    if-ge v7, v2, :cond_4e

    .line 284
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    iget-object v9, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 285
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v9, v9, v7

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    goto :goto_4e

    .line 283
    :cond_4b
    add-int/lit8 v7, v7, 0x1

    goto :goto_20

    .line 280
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "j":I
    :cond_4e
    :goto_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 290
    .end local v4    # "i":I
    :cond_51
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/ComponentName;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    return-object v1

    .line 275
    .end local v0    # "NQ":I
    .end local v2    # "NS":I
    .end local v3    # "aliveComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    :cond_5e
    :goto_5e
    new-array v0, v1, [Landroid/content/ComponentName;

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "ident"    # Ljava/lang/Object;

    .line 294
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 295
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 296
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 297
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mMatch=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 299
    iget v0, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 300
    const-string v0, " mAlways="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    if-eqz v0, :cond_57

    .line 302
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Selected from:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_40
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_57

    .line 304
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 308
    .end local v0    # "i":I
    :cond_57
    return-void
.end method

.method public getParseError()Ljava/lang/String;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mParseError:Ljava/lang/String;

    return-object v0
.end method

.method public isSuperset(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 246
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_b

    .line 247
    if-nez p1, :cond_a

    move v1, v2

    nop

    :cond_a
    return v1

    .line 249
    :cond_b
    if-nez p1, :cond_e

    .line 250
    return v2

    .line 252
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 253
    .local v0, "NQ":I
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 254
    .local v3, "NS":I
    if-ge v3, v0, :cond_18

    .line 255
    return v1

    .line 257
    :cond_18
    move v4, v1

    .local v4, "i":I
    :goto_19
    if-ge v4, v0, :cond_4a

    .line 258
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 259
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 260
    .local v6, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v7, 0x0

    .line 261
    .local v7, "foundMatch":Z
    move v8, v1

    .local v8, "j":I
    :goto_25
    if-ge v8, v3, :cond_44

    .line 262
    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v9, v9, v8

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    iget-object v9, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v9, v9, v8

    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 263
    const/4 v7, 0x1

    .line 264
    goto :goto_44

    .line 261
    :cond_41
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 267
    .end local v8    # "j":I
    :cond_44
    :goto_44
    if-nez v7, :cond_47

    return v1

    .line 257
    .end local v5    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v7    # "foundMatch":Z
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 269
    .end local v4    # "i":I
    :cond_4a
    return v2
.end method

.method public sameSet(Ljava/util/List;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 197
    .local p1, "query":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 198
    if-nez p1, :cond_9

    goto :goto_a

    :cond_9
    move v1, v2

    :goto_a
    return v1

    .line 200
    :cond_b
    if-nez p1, :cond_e

    .line 201
    return v2

    .line 203
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 204
    .local v0, "NQ":I
    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v3, v3

    .line 206
    .local v3, "NS":I
    const/4 v4, 0x0

    .line 207
    .local v4, "numMatch":I
    move v5, v4

    move v4, v2

    .local v4, "i":I
    .local v5, "numMatch":I
    :goto_18
    if-ge v4, v0, :cond_4b

    .line 208
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 209
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 210
    .local v7, "ai":Landroid/content/pm/ActivityInfo;
    const/4 v8, 0x0

    .line 211
    .local v8, "good":Z
    move v9, v2

    .local v9, "j":I
    :goto_24
    if-ge v9, v3, :cond_45

    .line 212
    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    iget-object v10, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v10, v10, v9

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 213
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    .line 214
    add-int/lit8 v5, v5, 0x1

    .line 215
    const/4 v8, 0x1

    .line 216
    goto :goto_45

    .line 211
    :cond_42
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 219
    .end local v9    # "j":I
    :cond_45
    :goto_45
    if-nez v8, :cond_48

    return v2

    .line 207
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v7    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v8    # "good":Z
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 221
    .end local v4    # "i":I
    :cond_4b
    if-ne v5, v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move v1, v2

    :goto_4f
    return v1
.end method

.method public sameSet([Landroid/content/ComponentName;)Z
    .registers 12
    .param p1, "comps"    # [Landroid/content/ComponentName;

    .line 225
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 226
    :cond_6
    array-length v0, p1

    .line 227
    .local v0, "NQ":I
    iget-object v2, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    array-length v2, v2

    .line 228
    .local v2, "NS":I
    const/4 v3, 0x0

    .line 229
    .local v3, "numMatch":I
    move v4, v3

    move v3, v1

    .local v3, "i":I
    .local v4, "numMatch":I
    :goto_d
    if-ge v3, v0, :cond_3e

    .line 230
    aget-object v5, p1, v3

    .line 231
    .local v5, "cn":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 232
    .local v6, "good":Z
    move v7, v1

    .local v7, "j":I
    :goto_13
    if-ge v7, v2, :cond_38

    .line 233
    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetPackages:[Ljava/lang/String;

    aget-object v8, v8, v7

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    iget-object v8, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    aget-object v8, v8, v7

    .line 234
    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 235
    add-int/lit8 v4, v4, 0x1

    .line 236
    const/4 v6, 0x1

    .line 237
    goto :goto_38

    .line 232
    :cond_35
    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 240
    .end local v7    # "j":I
    :cond_38
    :goto_38
    if-nez v6, :cond_3b

    return v1

    .line 229
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v6    # "good":Z
    :cond_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 242
    .end local v3    # "i":I
    :cond_3e
    if-ne v4, v2, :cond_42

    const/4 v1, 0x1

    nop

    :cond_42
    return v1
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 8
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "full"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/pm/PreferredComponent;->mSetClasses:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_a

    :cond_9
    move v0, v1

    .line 181
    .local v0, "NS":I
    :goto_a
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mShortComponent:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    if-eqz p2, :cond_56

    .line 183
    iget v2, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    if-eqz v2, :cond_25

    .line 184
    const-string/jumbo v2, "match"

    iget v3, p0, Lcom/android/server/pm/PreferredComponent;->mMatch:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    :cond_25
    const-string v2, "always"

    iget-boolean v3, p0, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const-string/jumbo v2, "set"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    nop

    .line 188
    .local v1, "s":I
    :goto_3b
    if-ge v1, v0, :cond_56

    .line 189
    const-string/jumbo v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const-string/jumbo v2, "name"

    iget-object v3, p0, Lcom/android/server/pm/PreferredComponent;->mSetComponents:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v4, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const-string/jumbo v2, "set"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    .line 194
    .end local v1    # "s":I
    :cond_56
    return-void
.end method
