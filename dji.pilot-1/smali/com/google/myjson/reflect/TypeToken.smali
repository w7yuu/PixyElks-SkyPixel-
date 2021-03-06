.class public Lcom/google/myjson/reflect/TypeToken;
.super Ljava/lang/Object;
.source "TypeToken.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final hashCode:I

.field final rawType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 62
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/myjson/reflect/TypeToken;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 64
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/myjson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 65
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/myjson/reflect/TypeToken;->hashCode:I

    .line 66
    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 72
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lcom/google/myjson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/myjson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 74
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/myjson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 75
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/google/myjson/reflect/TypeToken;->hashCode:I

    .line 76
    return-void
.end method

.method private static varargs buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
    .locals 7
    .param p0, "token"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/AssertionError;"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "expected":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected type. Expected one of: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "exceptionMessage":Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Class;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 261
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "but got: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", for type token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    new-instance v5, Ljava/lang/AssertionError;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    return-object v5
.end method

.method public static get(Ljava/lang/Class;)Lcom/google/myjson/reflect/TypeToken;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/myjson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 304
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/google/myjson/reflect/TypeToken;

    invoke-direct {v0, p0}, Lcom/google/myjson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static get(Ljava/lang/reflect/Type;)Lcom/google/myjson/reflect/TypeToken;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lcom/google/myjson/reflect/TypeToken",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v0, Lcom/google/myjson/reflect/TypeToken;

    invoke-direct {v0, p0}, Lcom/google/myjson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 84
    .local v1, "superclass":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Missing type parameter."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v0, v1

    .line 87
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 88
    .local v0, "parameterized":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/google/myjson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
    .locals 4
    .param p0, "from"    # Ljava/lang/reflect/Type;
    .param p1, "to"    # Ljava/lang/reflect/GenericArrayType;

    .prologue
    .line 162
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 163
    .local v2, "toGenericComponentType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_3

    .line 164
    move-object v1, p0

    .line 165
    .local v1, "t":Ljava/lang/reflect/Type;
    instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v3, :cond_1

    .line 166
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "from":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 174
    :cond_0
    :goto_0
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .end local v2    # "toGenericComponentType":Ljava/lang/reflect/Type;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1, v2, v3}, Lcom/google/myjson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v3

    .line 179
    .end local v1    # "t":Ljava/lang/reflect/Type;
    :goto_1
    return v3

    .line 167
    .restart local v1    # "t":Ljava/lang/reflect/Type;
    .restart local v2    # "toGenericComponentType":Ljava/lang/reflect/Type;
    .restart local p0    # "from":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v3, p0, Ljava/lang/Class;

    if-eqz v3, :cond_0

    move-object v0, p0

    .line 168
    check-cast v0, Ljava/lang/Class;

    .line 169
    .local v0, "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 170
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    .line 172
    :cond_2
    move-object v1, v0

    goto :goto_0

    .line 179
    .end local v0    # "classType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "t":Ljava/lang/reflect/Type;
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 16
    .param p0, "from"    # Ljava/lang/reflect/Type;
    .param p1, "to"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 189
    .local p2, "typeVarMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    if-nez p0, :cond_0

    .line 190
    const/4 v15, 0x0

    .line 232
    :goto_0
    return v15

    .line 193
    :cond_0
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 194
    const/4 v15, 0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/google/myjson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    .line 199
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    .line 200
    .local v9, "ptype":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v15, :cond_2

    move-object/from16 v9, p0

    .line 201
    check-cast v9, Ljava/lang/reflect/ParameterizedType;

    .line 205
    :cond_2
    if-eqz v9, :cond_5

    .line 206
    invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    .line 207
    .local v11, "tArgs":[Ljava/lang/reflect/Type;
    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v12

    .line 208
    .local v12, "tParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v15, v11

    if-ge v5, v15, :cond_4

    .line 209
    aget-object v2, v11, v5

    .line 210
    .local v2, "arg":Ljava/lang/reflect/Type;
    aget-object v14, v12, v5

    .line 211
    .local v14, "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :goto_2
    instance-of v15, v2, Ljava/lang/reflect/TypeVariable;

    if-eqz v15, :cond_3

    move-object v13, v2

    .line 212
    check-cast v13, Ljava/lang/reflect/TypeVariable;

    .line 213
    .local v13, "v":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "arg":Ljava/lang/reflect/Type;
    check-cast v2, Ljava/lang/reflect/Type;

    .line 214
    .restart local v2    # "arg":Ljava/lang/reflect/Type;
    goto :goto_2

    .line 215
    .end local v13    # "v":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_3
    invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 219
    .end local v2    # "arg":Ljava/lang/reflect/Type;
    .end local v14    # "var":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v9, v0, v1}, Lcom/google/myjson/reflect/TypeToken;->typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 220
    const/4 v15, 0x1

    goto :goto_0

    .line 224
    .end local v5    # "i":I
    .end local v11    # "tArgs":[Ljava/lang/reflect/Type;
    .end local v12    # "tParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v3

    .local v3, "arr$":[Ljava/lang/reflect/Type;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_3
    if-ge v6, v8, :cond_7

    aget-object v7, v3, v6

    .line 225
    .local v7, "itype":Ljava/lang/reflect/Type;
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p1

    invoke-static {v7, v0, v15}, Lcom/google/myjson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 226
    const/4 v15, 0x1

    goto :goto_0

    .line 224
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 231
    .end local v7    # "itype":Ljava/lang/reflect/Type;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v10

    .line 232
    .local v10, "sType":Ljava/lang/reflect/Type;
    new-instance v15, Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p1

    invoke-static {v10, v0, v15}, Lcom/google/myjson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v15

    goto/16 :goto_0
.end method

.method private static matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
    .locals 1
    .param p0, "from"    # Ljava/lang/reflect/Type;
    .param p1, "to"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, "typeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "from":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .locals 6
    .param p0, "from"    # Ljava/lang/reflect/ParameterizedType;
    .param p1, "to"    # Ljava/lang/reflect/ParameterizedType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "typeVarMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Type;>;"
    const/4 v3, 0x0

    .line 241
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 243
    .local v0, "fromArgs":[Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 244
    .local v2, "toArgs":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    .line 245
    aget-object v4, v0, v1

    aget-object v5, v2, v1

    invoke-static {v4, v5, p2}, Lcom/google/myjson/reflect/TypeToken;->matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 251
    .end local v0    # "fromArgs":[Ljava/lang/reflect/Type;
    .end local v1    # "i":I
    .end local v2    # "toArgs":[Ljava/lang/reflect/Type;
    :cond_0
    :goto_1
    return v3

    .line 244
    .restart local v0    # "fromArgs":[Ljava/lang/reflect/Type;
    .restart local v1    # "i":I
    .restart local v2    # "toArgs":[Ljava/lang/reflect/Type;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 285
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    instance-of v0, p1, Lcom/google/myjson/reflect/TypeToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/google/myjson/reflect/TypeToken;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/google/myjson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getRawType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    return-object v0
.end method

.method public final getType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 102
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 281
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    iget v0, p0, Lcom/google/myjson/reflect/TypeToken;->hashCode:I

    return v0
.end method

.method public isAssignableFrom(Lcom/google/myjson/reflect/TypeToken;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/myjson/reflect/TypeToken",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    .local p1, "token":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<*>;"
    invoke-virtual {p1}, Lcom/google/myjson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/myjson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 113
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lcom/google/myjson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public isAssignableFrom(Ljava/lang/reflect/Type;)Z
    .locals 5
    .param p1, "from"    # Ljava/lang/reflect/Type;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 124
    if-nez p1, :cond_0

    .line 138
    :goto_0
    return v2

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    .line 129
    goto :goto_0

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/myjson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_0

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_3

    .line 135
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/google/myjson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v2

    goto :goto_0

    .line 137
    :cond_3
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_5

    .line 138
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/myjson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p1, v0}, Lcom/google/myjson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    .line 141
    :cond_5
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/reflect/ParameterizedType;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/reflect/GenericArrayType;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/google/myjson/reflect/TypeToken;->buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    .local p0, "this":Lcom/google/myjson/reflect/TypeToken;, "Lcom/google/myjson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/google/myjson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/google/myjson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
