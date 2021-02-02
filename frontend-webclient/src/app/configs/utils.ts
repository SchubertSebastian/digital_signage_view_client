export class Utils {
    static getBackgroundImageUrl(css: CSSStyleDeclaration): string {
        return css.backgroundImage.slice(4, -1).replace(/['"]/g, "");
    }
}
