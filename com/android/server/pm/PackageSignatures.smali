.class Lcom/android/server/pm/PackageSignatures;
.super Ljava/lang/Object;
.source "PackageSignatures.java"


# instance fields
.field mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 53
    return-void
.end method

.method constructor <init>(Landroid/content/pm/PackageParser$SigningDetails;)V
    .registers 2
    .param p1, "signingDetails"    # Landroid/content/pm/PackageParser$SigningDetails;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageSignatures;)V
    .registers 4
    .param p1, "orig"    # Lcom/android/server/pm/PackageSignatures;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-eqz p1, :cond_15

    iget-object v0, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    sget-object v1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    if-eq v0, v1, :cond_15

    .line 41
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$SigningDetails;-><init>(Landroid/content/pm/PackageParser$SigningDetails;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    goto :goto_19

    .line 43
    :cond_15
    sget-object v0, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 45
    :goto_19
    return-void
.end method

.method private readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;[Landroid/content/pm/Signature;[ILandroid/content/pm/PackageParser$SigningDetails$Builder;)I
    .registers 25
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;
    .param p4, "flags"    # [I
    .param p5, "builder"    # Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "[I",
            "Landroid/content/pm/PackageParser$SigningDetails$Builder;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 159
    .local p2, "readSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 159
    array-length v10, v9

    .line 160
    .local v10, "count":I
    const/4 v0, 0x0

    .line 162
    .local v0, "pos":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    move-object/from16 v11, p5

    move v12, v0

    .line 162
    .end local v0    # "pos":I
    .end local p5    # "builder":Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .local v1, "outerDepth":I
    .local v11, "builder":Landroid/content/pm/PackageParser$SigningDetails$Builder;
    .local v12, "pos":I
    :goto_f
    move v13, v1

    .line 164
    .end local v1    # "outerDepth":I
    .local v13, "outerDepth":I
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v14, v0

    .line 164
    .local v14, "type":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_29d

    const/4 v0, 0x3

    if-ne v14, v0, :cond_21

    .line 166
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    if-le v1, v13, :cond_29d

    .line 167
    :cond_21
    if-eq v14, v0, :cond_296

    const/4 v0, 0x4

    if-ne v14, v0, :cond_28

    .line 169
    goto/16 :goto_296

    .line 172
    :cond_28
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, "tagName":Ljava/lang/String;
    const-string v0, "cert"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a3

    .line 174
    if-ge v12, v10, :cond_17b

    .line 175
    const-string v0, "index"

    invoke-interface {v7, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 176
    .local v2, "index":Ljava/lang/String;
    if-eqz v2, :cond_161

    .line 178
    :try_start_3f
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 179
    .local v0, "idx":I
    const-string/jumbo v3, "key"

    invoke-interface {v7, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "key":Ljava/lang/String;
    if-nez v3, :cond_aa

    .line 181
    if-ltz v0, :cond_88

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_88

    .line 182
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/Signature;

    .line 183
    .local v4, "sig":Landroid/content/pm/Signature;
    if-eqz v4, :cond_65

    .line 184
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/Signature;

    aput-object v15, v9, v12

    goto :goto_86

    .line 186
    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <cert> index "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not defined at "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    const/4 v5, 0x5

    invoke-static {v5, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 191
    .end local v4    # "sig":Landroid/content/pm/Signature;
    :goto_86
    goto/16 :goto_111

    .line 192
    :cond_88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <cert> index "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is out of bounds at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    const/4 v4, 0x5

    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_111

    .line 198
    :cond_aa
    :goto_aa
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v0, :cond_b5

    .line 199
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 201
    :cond_b5
    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, v3}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 202
    .local v1, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v8, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 203
    aput-object v1, v9, v12
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_bf} :catch_ef
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3f .. :try_end_bf} :catch_c0

    .line 203
    .end local v0    # "idx":I
    .end local v1    # "sig":Landroid/content/pm/Signature;
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_111

    .line 210
    :catch_c0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <cert> index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has an invalid signature at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 211
    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 211
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_112

    .line 205
    :catch_ef
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <cert> index "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a number at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    const/4 v3, 0x5

    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 216
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_111
    nop

    .line 218
    :goto_112
    if-eqz p4, :cond_17a

    .line 219
    const-string v0, "flags"

    const/4 v1, 0x0

    invoke-interface {v7, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "flagsStr":Ljava/lang/String;
    if-eqz v1, :cond_147

    .line 222
    :try_start_11d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, p4, v12
    :try_end_123
    .catch Ljava/lang/NumberFormatException; {:try_start_11d .. :try_end_123} :catch_124

    goto :goto_146

    .line 223
    :catch_124
    move-exception v0

    .line 224
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <cert> flags "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not a number at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    const/4 v4, 0x5

    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 228
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "flagsStr":Ljava/lang/String;
    :goto_146
    goto :goto_160

    .line 230
    .restart local v1    # "flagsStr":Ljava/lang/String;
    :cond_147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <cert> has no flags at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    const/4 v3, 0x5

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 234
    .end local v1    # "flagsStr":Ljava/lang/String;
    :goto_160
    goto :goto_17a

    .line 236
    :cond_161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <cert> has no index at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 240
    .end local v2    # "index":Ljava/lang/String;
    :cond_17a
    :goto_17a
    goto :goto_19c

    .line 241
    :cond_17b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: too many <cert> tags, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 246
    :goto_19c
    add-int/lit8 v12, v12, 0x1

    .line 247
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_295

    .line 248
    :cond_1a3
    const-string/jumbo v0, "pastSigs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_278

    .line 249
    if-nez p4, :cond_25a

    .line 251
    const-string v0, "count"

    const/4 v1, 0x0

    invoke-interface {v7, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "countStr":Ljava/lang/String;
    if-nez v5, :cond_1d4

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <pastSigs> has no count at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    const/4 v4, 0x5

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 256
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1d5

    .line 259
    :cond_1d4
    const/4 v4, 0x5

    :goto_1d5
    :try_start_1d5
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "pastSigsCount":I
    new-array v1, v0, [Landroid/content/pm/Signature;

    move-object v3, v1

    .line 261
    .local v3, "pastSignatures":[Landroid/content/pm/Signature;
    new-array v1, v0, [I
    :try_end_1de
    .catch Ljava/lang/NumberFormatException; {:try_start_1d5 .. :try_end_1de} :catch_235

    move-object v2, v1

    .line 262
    .local v2, "pastSignaturesFlags":[I
    move-object/from16 v1, p0

    move-object/from16 v16, v2

    move-object v2, v7

    .line 262
    .end local v2    # "pastSignaturesFlags":[I
    .local v16, "pastSignaturesFlags":[I
    move-object/from16 v17, v3

    move-object v3, v8

    .line 262
    .end local v3    # "pastSignatures":[Landroid/content/pm/Signature;
    .local v17, "pastSignatures":[Landroid/content/pm/Signature;
    move v15, v4

    move-object/from16 v4, v17

    move-object v8, v5

    move v9, v15

    move-object/from16 v5, v16

    .line 262
    .end local v5    # "countStr":Ljava/lang/String;
    .local v8, "countStr":Ljava/lang/String;
    move-object v15, v6

    move-object v6, v11

    .line 262
    .end local v6    # "tagName":Ljava/lang/String;
    .local v15, "tagName":Ljava/lang/String;
    :try_start_1f0
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;[Landroid/content/pm/Signature;[ILandroid/content/pm/PackageParser$SigningDetails$Builder;)I

    move-result v1

    .line 264
    .local v1, "pastSigsPos":I
    nop

    .line 265
    move-object/from16 v2, v17

    invoke-virtual {v11, v2}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    move-result-object v3

    .line 266
    .end local v17    # "pastSignatures":[Landroid/content/pm/Signature;
    .local v2, "pastSignatures":[Landroid/content/pm/Signature;
    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setPastSigningCertificatesFlags([I)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    move-result-object v3

    .line 266
    .end local v16    # "pastSignaturesFlags":[I
    .local v4, "pastSignaturesFlags":[I
    move-object v11, v3

    .line 268
    if-ge v1, v0, :cond_232

    .line 272
    new-array v3, v1, [Landroid/content/pm/Signature;

    .line 273
    .local v3, "newSigs":[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 274
    new-array v6, v1, [I

    .line 275
    .local v6, "newFlags":[I
    invoke-static {v4, v5, v6, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    nop

    .line 277
    invoke-virtual {v11, v3}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setPastSigningCertificates([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    move-result-object v5

    .line 278
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setPastSigningCertificatesFlags([I)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    move-result-object v5

    move-object v11, v5

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error in package manager settings: <pastSigs> count does not match number of <cert> entries "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    const/4 v9, 0x5

    invoke-static {v9, v5}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_232
    .catch Ljava/lang/NumberFormatException; {:try_start_1f0 .. :try_end_232} :catch_233

    .line 289
    .end local v0    # "pastSigsCount":I
    .end local v1    # "pastSigsPos":I
    .end local v2    # "pastSignatures":[Landroid/content/pm/Signature;
    .end local v3    # "newSigs":[Landroid/content/pm/Signature;
    .end local v4    # "pastSignaturesFlags":[I
    .end local v6    # "newFlags":[I
    :cond_232
    goto :goto_259

    .line 284
    :catch_233
    move-exception v0

    goto :goto_238

    .line 284
    .end local v8    # "countStr":Ljava/lang/String;
    .end local v15    # "tagName":Ljava/lang/String;
    .restart local v5    # "countStr":Ljava/lang/String;
    .local v6, "tagName":Ljava/lang/String;
    :catch_235
    move-exception v0

    move-object v8, v5

    move-object v15, v6

    .line 285
    .end local v5    # "countStr":Ljava/lang/String;
    .end local v6    # "tagName":Ljava/lang/String;
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "countStr":Ljava/lang/String;
    .restart local v15    # "tagName":Ljava/lang/String;
    :goto_238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <pastSigs> count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not a number at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    const/4 v2, 0x5

    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 290
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v8    # "countStr":Ljava/lang/String;
    :goto_259
    goto :goto_295

    .line 291
    .end local v15    # "tagName":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_25a
    move-object v15, v6

    .line 291
    .end local v6    # "tagName":Ljava/lang/String;
    .restart local v15    # "tagName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<pastSigs> encountered multiple times under the same <sigs> at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 294
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_295

    .line 297
    .end local v15    # "tagName":Ljava/lang/String;
    .restart local v6    # "tagName":Ljava/lang/String;
    :cond_278
    move-object v15, v6

    .line 297
    .end local v6    # "tagName":Ljava/lang/String;
    .restart local v15    # "tagName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <sigs>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 300
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 302
    .end local v15    # "tagName":Ljava/lang/String;
    :goto_295
    nop

    .line 162
    .end local v13    # "outerDepth":I
    .end local v14    # "type":I
    .local v1, "outerDepth":I
    :cond_296
    :goto_296
    move v1, v13

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    goto/16 :goto_f

    .line 303
    .end local v1    # "outerDepth":I
    .restart local v13    # "outerDepth":I
    .restart local v14    # "type":I
    :cond_29d
    return v12
.end method

.method private writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;[I)V
    .registers 15
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "signatures"    # [Landroid/content/pm/Signature;
    .param p4, "flags"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;[",
            "Landroid/content/pm/Signature;",
            "[I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    .local p2, "writtenSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    const/4 v0, 0x0

    move v1, v0

    .line 81
    .local v1, "i":I
    :goto_2
    array-length v2, p3

    if-ge v1, v2, :cond_64

    .line 82
    const-string v2, "cert"

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    aget-object v2, p3, v1

    .line 84
    .local v2, "sig":Landroid/content/pm/Signature;
    invoke-virtual {v2}, Landroid/content/pm/Signature;->hashCode()I

    move-result v4

    .line 85
    .local v4, "sigHash":I
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 87
    .local v5, "numWritten":I
    move v6, v0

    .line 87
    .local v6, "j":I
    :goto_16
    if-ge v6, v5, :cond_37

    .line 88
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/Signature;

    .line 89
    .local v7, "writtenSig":Landroid/content/pm/Signature;
    invoke-virtual {v7}, Landroid/content/pm/Signature;->hashCode()I

    move-result v8

    if-ne v8, v4, :cond_34

    invoke-virtual {v7, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_34

    .line 90
    const-string v8, "index"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v3, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 91
    goto :goto_37

    .line 87
    .end local v7    # "writtenSig":Landroid/content/pm/Signature;
    :cond_34
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 94
    :cond_37
    :goto_37
    if-lt v6, v5, :cond_4f

    .line 95
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    const-string v7, "index"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 97
    const-string/jumbo v7, "key"

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 99
    :cond_4f
    if-eqz p4, :cond_5c

    .line 100
    const-string v7, "flags"

    aget v8, p4, v1

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v3, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 102
    :cond_5c
    const-string v7, "cert"

    invoke-interface {p1, v3, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    .end local v2    # "sig":Landroid/content/pm/Signature;
    .end local v4    # "sigHash":I
    .end local v5    # "numWritten":I
    .end local v6    # "j":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    .end local v1    # "i":I
    :cond_64
    return-void
.end method


# virtual methods
.method readXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 108
    .local p2, "readSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    new-instance v0, Landroid/content/pm/PackageParser$SigningDetails$Builder;

    invoke-direct {v0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;-><init>()V

    .line 111
    .local v0, "builder":Landroid/content/pm/PackageParser$SigningDetails$Builder;
    const-string v1, "count"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "countStr":Ljava/lang/String;
    const/4 v8, 0x5

    if-nez v7, :cond_2a

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in package manager settings: <sigs> has no count at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v8, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 116
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 118
    :cond_2a
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 120
    .local v9, "count":I
    const-string/jumbo v1, "schemeVersion"

    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 122
    .local v10, "schemeVersionStr":Ljava/lang/String;
    if-nez v10, :cond_51

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <sigs> has no schemeVersion at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v8, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 126
    const/4 v1, 0x0

    .line 126
    .local v1, "signatureSchemeVersion":I
    goto :goto_55

    .line 128
    .end local v1    # "signatureSchemeVersion":I
    :cond_51
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 128
    .restart local v1    # "signatureSchemeVersion":I
    :goto_55
    move v11, v1

    .line 130
    .end local v1    # "signatureSchemeVersion":I
    .local v11, "signatureSchemeVersion":I
    invoke-virtual {v0, v11}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setSignatureSchemeVersion(I)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    .line 131
    new-array v12, v9, [Landroid/content/pm/Signature;

    .line 132
    .local v12, "signatures":[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v12

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PackageSignatures;->readCertsListXml(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;[Landroid/content/pm/Signature;[ILandroid/content/pm/PackageParser$SigningDetails$Builder;)I

    move-result v1

    .line 133
    .local v1, "pos":I
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    .line 134
    if-ge v1, v9, :cond_8c

    .line 138
    new-array v2, v1, [Landroid/content/pm/Signature;

    .line 139
    .local v2, "newSigs":[Landroid/content/pm/Signature;
    const/4 v3, 0x0

    invoke-static {v12, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->setSignatures([Landroid/content/pm/Signature;)Landroid/content/pm/PackageParser$SigningDetails$Builder;

    move-result-object v0

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <sigs> count does not match number of  <cert> entries"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-static {v8, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 147
    .end local v2    # "newSigs":[Landroid/content/pm/Signature;
    :cond_8c
    :try_start_8c
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$SigningDetails$Builder;->build()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;
    :try_end_92
    .catch Ljava/security/cert/CertificateException; {:try_start_8c .. :try_end_92} :catch_93

    .line 153
    goto :goto_9d

    .line 148
    :catch_93
    move-exception v2

    .line 149
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-string v3, "Error in package manager settings: <sigs> unable to convert certificate(s) to public key(s)."

    invoke-static {v8, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 152
    sget-object v3, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    iput-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 154
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_9d
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 308
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 309
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "PackageSignatures{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 311
    const-string v1, " version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 313
    const-string v1, ", signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 314
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    if-eqz v1, :cond_52

    .line 315
    move v1, v2

    .local v1, "i":I
    :goto_30
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v3

    if-ge v1, v3, :cond_52

    .line 316
    if-lez v1, :cond_3e

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 317
    :cond_3e
    iget-object v3, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v1

    .line 318
    invoke-virtual {v3}, Landroid/content/pm/Signature;->hashCode()I

    move-result v3

    .line 317
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 321
    .end local v1    # "i":I
    :cond_52
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    const-string v1, ", past signatures:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_98

    .line 324
    nop

    .local v2, "i":I
    :goto_63
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-ge v1, v2, :cond_98

    .line 325
    if-lez v1, :cond_72

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    :cond_72
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    aget-object v2, v2, v1

    .line 327
    invoke-virtual {v2}, Landroid/content/pm/Signature;->hashCode()I

    move-result v2

    .line 326
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v2, " flags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificatesFlags:[I

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_63

    .line 332
    .end local v2    # "i":I
    :cond_98
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlSerializer;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/Signature;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    .local p3, "writtenSignatures":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/Signature;>;"
    iget-object v0, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v0, v0, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-nez v0, :cond_7

    .line 58
    return-void

    .line 60
    :cond_7
    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 61
    const-string v1, "count"

    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 62
    const-string/jumbo v1, "schemeVersion"

    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->signatureSchemeVersion:I

    .line 63
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;[I)V

    .line 67
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_59

    .line 68
    const-string/jumbo v1, "pastSigs"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 69
    const-string v1, "count"

    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    array-length v2, v2

    .line 70
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-interface {p1, v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 71
    iget-object v1, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificates:[Landroid/content/pm/Signature;

    iget-object v2, p0, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, v2, Landroid/content/pm/PackageParser$SigningDetails;->pastSigningCertificatesFlags:[I

    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/server/pm/PackageSignatures;->writeCertsListXml(Lorg/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;[Landroid/content/pm/Signature;[I)V

    .line 74
    const-string/jumbo v1, "pastSigs"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    :cond_59
    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    return-void
.end method
