.class public Lcom/android/systemui/qs/QSTile$ResourceIcon;
.super Lcom/android/systemui/qs/QSTile$Icon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceIcon"
.end annotation


# static fields
.field private static final ICONS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/qs/QSTile$Icon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 506
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    .line 505
    return-void
.end method

.method private constructor <init>(I)V
    .registers 2
    .param p1, "resId"    # I

    .prologue
    .line 510
    .local p0, "this":Lcom/android/systemui/qs/QSTile$ResourceIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.ResourceIcon;"
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$Icon;-><init>()V

    .line 511
    iput p1, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    .line 510
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/systemui/qs/QSTile$ResourceIcon;)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$ResourceIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.ResourceIcon;"
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(I)V

    return-void
.end method

.method public static get(I)Lcom/android/systemui/qs/QSTile$Icon;
    .registers 3
    .param p0, "resId"    # I

    .prologue
    .line 515
    sget-object v1, Lcom/android/systemui/qs/QSTile$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$Icon;

    .line 516
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$Icon;
    if-nez v0, :cond_14

    .line 517
    new-instance v0, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$Icon;
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(I)V

    .line 518
    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$Icon;
    sget-object v1, Lcom/android/systemui/qs/QSTile$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 520
    :cond_14
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/android/systemui/qs/QSTile$ResourceIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.ResourceIcon;"
    const/4 v0, 0x0

    .line 535
    instance-of v1, p1, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    if-eqz v1, :cond_e

    check-cast p1, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    .end local p1    # "o":Ljava/lang/Object;
    iget v1, p1, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    iget v2, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    if-ne v1, v2, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 525
    .local p0, "this":Lcom/android/systemui/qs/QSTile$ResourceIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.ResourceIcon;"
    iget v0, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getInvisibleDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 530
    .local p0, "this":Lcom/android/systemui/qs/QSTile$ResourceIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.ResourceIcon;"
    iget v0, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 540
    .local p0, "this":Lcom/android/systemui/qs/QSTile$ResourceIcon;, "Lcom/android/systemui/qs/QSTile<TTState;>.ResourceIcon;"
    const-string/jumbo v0, "ResourceIcon[resId=0x%08x]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
