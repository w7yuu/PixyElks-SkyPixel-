.class public final enum Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;
.super Ljava/lang/Enum;
.source "CmdIdSpecial.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldji/midware/data/config/P3/CmdIdSpecial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CmdIdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Control:Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

.field private static final synthetic ENUM$VALUES:[Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

.field public static final enum Other:Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;


# instance fields
.field private cls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private data:I

.field private isBlock:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    const-string v1, "Control"

    .line 22
    const-class v5, Ldji/midware/data/model/P3/DataSpecialControl;

    move v4, v2

    invoke-direct/range {v0 .. v5}, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;-><init>(Ljava/lang/String;IIZLjava/lang/Class;)V

    sput-object v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->Control:Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    .line 24
    new-instance v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    const-string v1, "Other"

    .line 28
    const/16 v4, 0x1ff

    invoke-direct {v0, v1, v3, v4}, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->Other:Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    sget-object v1, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->Control:Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    aput-object v1, v0, v2

    sget-object v1, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->Other:Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    aput-object v1, v0, v3

    sput-object v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->ENUM$VALUES:[Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "_data"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->isBlock:Z

    .line 35
    iput p3, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->data:I

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZLjava/lang/Class;)V
    .locals 1
    .param p3, "_data"    # I
    .param p4, "isBlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p5, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->isBlock:Z

    .line 39
    iput p3, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->data:I

    .line 40
    iput-boolean p4, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->isBlock:Z

    .line 41
    iput-object p5, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->cls:Ljava/lang/Class;

    .line 42
    return-void
.end method

.method public static find(I)Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;
    .locals 4
    .param p0, "b"    # I

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "result":Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;
    invoke-static {}, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->values()[Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    move-result-object v1

    .line 63
    .local v1, "items":[Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-lt v0, v3, :cond_0

    .line 69
    :goto_1
    return-object v2

    .line 64
    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v3, p0}, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->_equals(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    aget-object v2, v1, v0

    .line 66
    goto :goto_1

    .line 63
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    return-object v0
.end method

.method public static values()[Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->ENUM$VALUES:[Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    array-length v1, v0

    new-array v2, v1, [Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public _equals(I)Z
    .locals 1
    .param p1, "b"    # I

    .prologue
    .line 57
    iget v0, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->data:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDataModel()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->cls:Ljava/lang/Class;

    return-object v0
.end method

.method public isBlock()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->isBlock:Z

    return v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Ldji/midware/data/config/P3/CmdIdSpecial$CmdIdType;->data:I

    return v0
.end method
