.class Lcom/android/systemui/qs/customize/TileAdapter$3;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/systemui/qs/customize/TileAdapter;
    .param p2, "val$holder"    # Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$3;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getAdapterPosition()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap1(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V

    .line 231
    return-void
.end method
